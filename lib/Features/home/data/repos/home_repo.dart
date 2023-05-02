import 'package:bookly/Features/home/data/models/BookModel.dart';
import 'package:bookly/shared/errors.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
 Future<Either<Errors,List<BookModel>>> fetchBestSellerBooks();
 Future<Either<Errors,List<BookModel>>> fetchFeaturedBooks();
}