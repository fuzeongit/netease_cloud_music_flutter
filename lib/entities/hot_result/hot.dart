import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hot.g.dart';

@JsonSerializable()
class Hot {
  final String first;
  final int second;
  final dynamic third;
  final int iconType;

  const Hot(
      {required this.first,
      required this.second,
      this.third,
      required this.iconType});

  @override
  String toString() {
    return 'Hot(first: $first, second: $second, third: $third, iconType: $iconType)';
  }

  factory Hot.fromJson(Map<String, dynamic> json) => _$HotFromJson(json);

  Map<String, dynamic> toJson() => _$HotToJson(this);

  Hot copyWith({
    String? first,
    int? second,
    dynamic third,
    int? iconType,
  }) {
    return Hot(
      first: first ?? this.first,
      second: second ?? this.second,
      third: third ?? this.third,
      iconType: iconType ?? this.iconType,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Hot) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      first.hashCode ^ second.hashCode ^ third.hashCode ^ iconType.hashCode;
}
