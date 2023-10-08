import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'hot.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  final List<Hot> hots;

  const Result({required this.hots});

  @override
  String toString() => 'Result(hots: $hots)';

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);

  Result copyWith({
    List<Hot>? hots,
  }) {
    return Result(
      hots: hots ?? this.hots,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Result) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => hots.hashCode;
}
