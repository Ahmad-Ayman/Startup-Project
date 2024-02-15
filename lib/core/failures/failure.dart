import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {


  const Failure();

  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  const ServerFailure();
}

class LocalFailure extends Failure {
  const LocalFailure();
}

class NoConnectionFailure extends Failure {
  const NoConnectionFailure();
}

class CustomFailure extends Failure {
  final List<String>? messages;

  const CustomFailure(this.messages);
}

class DataParsingFailure extends Failure {
  const DataParsingFailure();
}