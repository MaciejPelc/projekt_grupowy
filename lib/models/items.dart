import 'package:freezed_annotation/freezed_annotation.dart';
part 'items.freezed.dart';
part 'items.g.dart';

@freezed
class Items with _$Items {
  const factory Items({
    String? id,
    String? name,
    String? description,
    String? categoryId,
    String? categoryName,
    double? price,
    bool? isAvailable,
  }) = _Items;
  factory Items.fromJson(Map<String, Object?> json) => _$ItemsFromJson(json);
}
