import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'hot_result.g.dart';

@JsonSerializable()
class HotResult {
  final int code;
  final Result result;

  const HotResult({required this.code, required this.result});

  @override
  String toString() => 'HotResult(code: $code, result: $result)';

  factory HotResult.fromJson(Map<String, dynamic> json) {
    return _$HotResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotResultToJson(this);

  HotResult copyWith({
    int? code,
    Result? result,
  }) {
    return HotResult(
      code: code ?? this.code,
      result: result ?? this.result,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! HotResult) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => code.hashCode ^ result.hashCode;
}
