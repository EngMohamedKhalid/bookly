// ignore_for_file: invalid_return_type_for_catch_error

import 'package:bookly/Features/home/data/models/BookModel.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/shared/errors.dart';
import 'package:bookly/shared/network/dio_api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo{

  @override
  Future<Either<Errors, List<BookModel>>> fetchBestSellerBooks()async {
     DioHelper.getData(url: "volumes?Filtering=free-ebooks&Sorting=newest &subject=&q=subject:love").then((value){
       List<BookModel> books = [];
       for(var item in value["items"]){
        books.add(BookModel.fromJson(item));
       }
       return right(books);
     }).catchError((error){
       if(error is DioError){
         return left(ServerError.fromDioError(error));
       }
       return left(ServerError(error.toString()));
     });
    throw UnimplementedError();
  }

  @override
  Future<Either<Errors, List<BookModel>>> fetchFeaturedBooks() {
    DioHelper.getData(url: "volumes?Filtering=free-ebooks&q=subject:love").then((value){
      List<BookModel> books = [];
      for(var item in value["items"]){
        books.add(BookModel.fromJson(item));
        print(books[0]);
      }
      return right(books);
    }).catchError((error){
      if(error is DioError){
        return left(ServerError.fromDioError(error));
      }
      return left(ServerError(error.toString()));
    });
    //return left(ServerError());
    throw UnimplementedError();
  }

}