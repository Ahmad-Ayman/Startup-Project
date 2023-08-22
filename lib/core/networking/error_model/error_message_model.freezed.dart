// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorMessageModel _$ErrorMessageModelFromJson(Map<String, dynamic> json) {
  return _ErrorMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ErrorMessageModel {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Status')
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorMessageModelCopyWith<ErrorMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorMessageModelCopyWith<$Res> {
  factory $ErrorMessageModelCopyWith(
          ErrorMessageModel value, $Res Function(ErrorMessageModel) then) =
      _$ErrorMessageModelCopyWithImpl<$Res, ErrorMessageModel>;
  @useResult
  $Res call({String message, @JsonKey(name: 'Status') int status});
}

/// @nodoc
class _$ErrorMessageModelCopyWithImpl<$Res, $Val extends ErrorMessageModel>
    implements $ErrorMessageModelCopyWith<$Res> {
  _$ErrorMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorMessageModelCopyWith<$Res>
    implements $ErrorMessageModelCopyWith<$Res> {
  factory _$$_ErrorMessageModelCopyWith(_$_ErrorMessageModel value,
          $Res Function(_$_ErrorMessageModel) then) =
      __$$_ErrorMessageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, @JsonKey(name: 'Status') int status});
}

/// @nodoc
class __$$_ErrorMessageModelCopyWithImpl<$Res>
    extends _$ErrorMessageModelCopyWithImpl<$Res, _$_ErrorMessageModel>
    implements _$$_ErrorMessageModelCopyWith<$Res> {
  __$$_ErrorMessageModelCopyWithImpl(
      _$_ErrorMessageModel _value, $Res Function(_$_ErrorMessageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$_ErrorMessageModel(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorMessageModel implements _ErrorMessageModel {
  const _$_ErrorMessageModel(
      {required this.message, @JsonKey(name: 'Status') required this.status});

  factory _$_ErrorMessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorMessageModelFromJson(json);

  @override
  final String message;
  @override
  @JsonKey(name: 'Status')
  final int status;

  @override
  String toString() {
    return 'ErrorMessageModel(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorMessageModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorMessageModelCopyWith<_$_ErrorMessageModel> get copyWith =>
      __$$_ErrorMessageModelCopyWithImpl<_$_ErrorMessageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorMessageModelToJson(
      this,
    );
  }
}

abstract class _ErrorMessageModel implements ErrorMessageModel {
  const factory _ErrorMessageModel(
          {required final String message,
          @JsonKey(name: 'Status') required final int status}) =
      _$_ErrorMessageModel;

  factory _ErrorMessageModel.fromJson(Map<String, dynamic> json) =
      _$_ErrorMessageModel.fromJson;

  @override
  String get message;
  @override
  @JsonKey(name: 'Status')
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorMessageModelCopyWith<_$_ErrorMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
