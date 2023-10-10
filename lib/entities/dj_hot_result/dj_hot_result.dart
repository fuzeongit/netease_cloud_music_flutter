import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dj_radio.dart';

part 'dj_hot_result.g.dart';

@JsonSerializable()
class DjHotResult {
  final List<DjRadio> djRadios;
  final bool hasMore;
  final int code;

  const DjHotResult(
      {required this.djRadios, required this.hasMore, required this.code});

  @override
  String toString() {
    return 'DjHotResult(djRadios: $djRadios, hasMore: $hasMore, code: $code)';
  }

  factory DjHotResult.fromJson(Map<String, dynamic> json) {
    return _$DjHotResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DjHotResultToJson(this);

  DjHotResult copyWith({
    List<DjRadio>? djRadios,
    bool? hasMore,
    int? code,
  }) {
    return DjHotResult(
      djRadios: djRadios ?? this.djRadios,
      hasMore: hasMore ?? this.hasMore,
      code: code ?? this.code,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! DjHotResult) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => djRadios.hashCode ^ hasMore.hashCode ^ code.hashCode;
}
