import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_data.freezed.dart';

@freezed
class PaginatedData<T> with _$PaginatedData<T> {
  const factory PaginatedData({
    required List<T> data,
    required bool isNextPageAvailable,
  }) = _PaginatedData<T>;
  const PaginatedData._();
}