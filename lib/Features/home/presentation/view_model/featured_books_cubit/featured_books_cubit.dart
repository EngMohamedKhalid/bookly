import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/Features/home/presentation/view_model/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates>{
  FeaturedBooksCubit(this.homeRepo):super(FeaturedBooksInitState());
  FeaturedBooksCubit getObject(context)=>BlocProvider.of(context);
  final HomeRepo homeRepo;
Future<void> getFeaturedBooks()async{
  emit(FeaturedBooksLoadingState());
  var result = await homeRepo.fetchFeaturedBooks();
  result.fold((failure) {
    emit(FeaturedBooksErrorState(failure.errorMessage));
  },(books) {
    emit(FeaturedBooksSuccessState(books));
  });
}

}