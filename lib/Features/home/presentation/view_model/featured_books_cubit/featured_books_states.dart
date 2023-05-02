import 'package:bookly/Features/home/data/models/BookModel.dart';

abstract class FeaturedBooksStates{}
class FeaturedBooksInitState extends FeaturedBooksStates{}
class FeaturedBooksLoadingState extends FeaturedBooksStates{}
class FeaturedBooksErrorState extends FeaturedBooksStates{
  final String errorMessage;
  FeaturedBooksErrorState(this.errorMessage);
}
class FeaturedBooksSuccessState extends FeaturedBooksStates{
  final List<BookModel> books ;
   FeaturedBooksSuccessState(this.books);
}