import '../networking/error_model/error_message_model.dart';

class ServerException implements Exception {

}

class LocalException implements Exception {

}

class NoConnectionException implements Exception {}

class DataParsingException implements Exception {}

class CustomException implements Exception {
  final List<String>? message;
  CustomException({
    required this.message,
  });
}
