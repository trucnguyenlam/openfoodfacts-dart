import 'package:json_annotation/json_annotation.dart';
import '../interface/JsonObject.dart';
import 'Product.dart';

part 'SearchResult.g.dart';

@JsonSerializable()
class SearchResult extends JsonObject {
  @JsonKey(name: "page", nullable: false, fromJson: JsonObject.parseInt)
  final int page;

  @JsonKey(name: "page_size", nullable: false, fromJson: JsonObject.parseInt)
  final int pageSize;

  @JsonKey(name: "count", nullable: false)
  final int count;

  @JsonKey(name: "skip", nullable: false)
  final int skip;

  @JsonKey(includeIfNull: false)
  final List<Product> products;

  const SearchResult(
      {this.page, this.pageSize, this.count, this.skip, this.products});

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SearchResultToJson(this);
}
