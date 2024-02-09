import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projekt_grupowy/models/items.dart';
part 'response_product_model.freezed.dart';
part 'response_product_model.g.dart';

@freezed
class ResponseProductModel with _$ResponseProductModel {
  const factory ResponseProductModel({
    List<Items>? items,
    double? pageNumber,
    double? totalPages,
    double? totalCount,
    bool? hasPreviousPage,
    bool? hasNextPage,
  }) = _ResponseProductModel;
  factory ResponseProductModel.fromJson(Map<String, Object?> json) =>
      _$ResponseProductModelFromJson(json);
}
