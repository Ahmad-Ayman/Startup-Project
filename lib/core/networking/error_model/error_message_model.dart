// class ErrorMessageModel extends Equatable {
//   final String message;
//   final int status;
//
//   const ErrorMessageModel({required this.message, required this.status});
//
//   factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
//     return ErrorMessageModel(
//       message: json['message'],
//       status: json['Status'],
//     );
//   }
//
//   @override
//   List<Object> get props => [message, status];
// }
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_message_model.freezed.dart';
part 'error_message_model.g.dart';

@freezed
abstract class ErrorMessageModel with _$ErrorMessageModel {
  const factory ErrorMessageModel({
    required String message,
    @JsonKey(name: 'Status') required int status,
  }) = _ErrorMessageModel;

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorMessageModelFromJson(json);
}
