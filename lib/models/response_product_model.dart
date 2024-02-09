import 'package:freezed_annotation/freezed_annotation.dart';
part 'response_product_model.freezed.dart';
part 'response_product_model.g.dart';

@freezed
class ResponseProductModel with _$ResponseProductModel {
  const factory ResponseProductModel({
    int? pageNumber,
    int? totalPages,
    int? totalCount,
    bool? hasPreviousPage,
    bool? hasNextPage,
  }) = _ResponseProductModel;
  factory ResponseProductModel.fromJson(Map<String, Object?> json) =>
      _$ResponseProductModelFromJson(json);
}
