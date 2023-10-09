import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pageable.g.dart';

@JsonSerializable()
class Pageable {
  final int? offset;
  final int? limit;

  const Pageable({this.offset, this.limit});

  @override
  String toString() => 'Pageable(offset: $offset, limit: $limit)';

  factory Pageable.fromJson(Map<String, dynamic> json) {
    return _$PageableFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PageableToJson(this);

  Pageable copyWith({
    int? offset,
    int? limit,
  }) {
    return Pageable(
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
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
  int get hashCode => offset.hashCode ^ limit.hashCode;
}
