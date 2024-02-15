import 'package:dio/dio.dart';

class Validators {
  static bool responseIsValid(Response response) => response.statusCode! >= 200 && response.statusCode! < 300;
  static bool responseIsNotValid(Response response) =>
      response.statusCode == 400;
  static bool responseIsUnAuthorized(Response response) =>
      response.statusCode == 401;
}
