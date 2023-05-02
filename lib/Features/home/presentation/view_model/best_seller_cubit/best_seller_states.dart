import 'package:bookly/Features/home/data/models/BookModel.dart';

abstract class BestSellerBooksStates{}
class BestSellerBooksInitState extends BestSellerBooksStates{}
class BestSellerBooksLoadingState extends BestSellerBooksStates{}
class BestSellerBooksErrorState extends BestSellerBooksStates{
  final String errorMessage;
  BestSellerBooksErrorState(this.errorMessage);
}
class BestSellerBooksSuccessState extends BestSellerBooksStates{
  final List<BookModel> books ;
  BestSellerBooksSuccessState(this.books);
}