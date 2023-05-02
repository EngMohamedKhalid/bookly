import 'package:dio/dio.dart';

class DioHelper{
  static late Dio dio;
  static init(){
    dio = Dio(
        BaseOptions(
            baseUrl: "https://www.googleapis.com/books/v1/",
            receiveDataWhenStatusError: true
        )
    );
  }

  static Future<Map<String,dynamic>>getData({required String url }) async{
    var response=  await  dio.get(url);
    print(response.data.toString());
    return response.data;


  }
}