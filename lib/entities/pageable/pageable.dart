import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pageable.g.dart';

@JsonSerializable()
class Pageable {
  final int? offset;
  final int? limit;
  final String? order;

  const Pageable({this.offset, this.limit, this.order});

  @override
  String toString() {
    return 'Pageable(offset: $offset, limit: $limit, order: $order)';
  }

  factory Pageable.fromJson(Map<String, dynamic> json) {
    return _$PageableFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PageableToJson(this);

  Pageable copyWith({
    int? offset,
    int? limit,
    String? order,
  }) {
    return Pageable(
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
      order: order ?? this.order,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Pageable) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => offset.hashCode ^ limit.hashCode ^ order.hashCode;
}
