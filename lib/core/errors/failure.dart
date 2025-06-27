import 'package:dio/dio.dart';

abstract class Failure {
  String get errmessage;
}

class ServerFailure extends Failure {
  @override
  final String errmessage;

  ServerFailure(this.errmessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connect Time Out');

      case DioExceptionType.sendTimeout:
        return ServerFailure(' Send Time Out');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Time Out');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure('Request Canceled');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error');

      case DioExceptionType.unknown:
        return ServerFailure('Unknown Error');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Page Not Found');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error');
    } else {
      return ServerFailure(response['error']['message']);
    }
  }
}
