import 'package:dio/dio.dart';

abstract class Errors{
  final String errorMessage;

  const Errors(this.errorMessage);
}
class ServerError extends Errors{
  ServerError(super.errorMessage);
 factory ServerError.fromDioError(DioError dioError){
    switch(dioError.type){
      case DioErrorType.connectionTimeout:
        return ServerError("Your Connection Time Out");
      case DioErrorType.sendTimeout:
        return ServerError("Your Send Time Out");
      case DioErrorType.receiveTimeout:
        return ServerError("Your Receive Time Out");
      case DioErrorType.badCertificate:
        return ServerError("Your Send Time Out");
      case DioErrorType.badResponse:
       return ServerError.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerError("Your Request was cancelled");
      case DioErrorType.connectionError:
        return ServerError("Please check your connection");
      case DioErrorType.unknown:
        return ServerError("Your Request was UnKnown");
      default :
        return ServerError("There was an error , please try again");
    }
  }
  factory ServerError.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerError('Your request was not found, please try later');
    } else if (statusCode == 500) {
      return ServerError('There is a problem with server, please try later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerError(response['error']['message']);
    } else {
      return ServerError('There was an error , please try again');
    }
  }
}