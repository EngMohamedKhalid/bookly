import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/Features/home/presentation/view_model/best_seller_cubit/best_seller_states.dart';
import 'package:bookly/Features/home/presentation/view_model/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksStates>{
  BestSellerBooksCubit(this.homeRepo):super(BestSellerBooksInitState());
  BestSellerBooksCubit getObject(context)=>BlocProvider.of(context);
  final HomeRepo homeRepo;
  Future<void> getBestSellerBooks()async{
    emit(BestSellerBooksLoadingState());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure) {
      emit(BestSellerBooksErrorState(failure.errorMessage));
    },(books) {
      emit(BestSellerBooksSuccessState(books));
    });
  }

}