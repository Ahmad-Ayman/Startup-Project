import '../../failures/failure.dart';


class ErrorObject {
  final String? message;
  final String? code;

  const ErrorObject({required this.message, this.code});

  static ErrorObject mapFailureToGenericErrorModel(Failure failure) {
    if (failure is NoConnectionFailure) {
      return const ErrorObject(
          message: "It seems that the server is not reachable at the moment");
    } else if (failure is DataParsingFailure) {
      return const ErrorObject(message: "Data has changed");
    } else if (failure is NoConnectionFailure) {
      return const ErrorObject(message: "No connection");
    } else if (failure is CustomFailure) {
      return ErrorObject(message: failure.messages?[0]);
    } else {
      return const ErrorObject(message: "");
    }
  }

  factory ErrorObject.fromJson(Map<String, dynamic> json) {
    return ErrorObject(
      message: json['message'],
      code: json['code'],
    );
  }
}
