// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedData<T> {
  List<T> get data => throw _privateConstructorUsedError;
  bool get isNextPageAvailable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedDataCopyWith<T, PaginatedData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedDataCopyWith<T, $Res> {
  factory $PaginatedDataCopyWith(
          PaginatedData<T> value, $Res Function(PaginatedData<T>) then) =
      _$PaginatedDataCopyWithImpl<T, $Res, PaginatedData<T>>;
  @useResult
  $Res call({List<T> data, bool isNextPageAvailable});
}

/// @nodoc
class _$PaginatedDataCopyWithImpl<T, $Res, $Val extends PaginatedData<T>>
    implements $PaginatedDataCopyWith<T, $Res> {
  _$PaginatedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginatedDataCopyWith<T, $Res>
    implements $PaginatedDataCopyWith<T, $Res> {
  factory _$$_PaginatedDataCopyWith(
          _$_PaginatedData<T> value, $Res Function(_$_PaginatedData<T>) then) =
      __$$_PaginatedDataCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data, bool isNextPageAvailable});
}

/// @nodoc
class __$$_PaginatedDataCopyWithImpl<T, $Res>
    extends _$PaginatedDataCopyWithImpl<T, $Res, _$_PaginatedData<T>>
    implements _$$_PaginatedDataCopyWith<T, $Res> {
  __$$_PaginatedDataCopyWithImpl(
      _$_PaginatedData<T> _value, $Res Function(_$_PaginatedData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$_PaginatedData<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PaginatedData<T> extends _PaginatedData<T> {
  const _$_PaginatedData(
      {required final List<T> data, required this.isNextPageAvailable})
      : _data = data,
        super._();

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'PaginatedData<$T>(data: $data, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedData<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedDataCopyWith<T, _$_PaginatedData<T>> get copyWith =>
      __$$_PaginatedDataCopyWithImpl<T, _$_PaginatedData<T>>(this, _$identity);
}

abstract class _PaginatedData<T> extends PaginatedData<T> {
  const factory _PaginatedData(
      {required final List<T> data,
      required final bool isNextPageAvailable}) = _$_PaginatedData<T>;
  const _PaginatedData._() : super._();

  @override
  List<T> get data;
  @override
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedDataCopyWith<T, _$_PaginatedData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
