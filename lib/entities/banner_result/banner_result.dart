import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'banner.dart';

part 'banner_result.g.dart';

@JsonSerializable()
class BannerResult {
  final List<Banner> banners;
  final int code;

  const BannerResult({required this.banners, required this.code});

  @override
  String toString() => 'BannerResult(banners: $banners, code: $code)';

  factory BannerResult.fromJson(Map<String, dynamic> json) {
    return _$BannerResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BannerResultToJson(this);

  BannerResult copyWith({
    List<Banner>? banners,
    int? code,
  }) {
    return BannerResult(
      banners: banners ?? this.banners,
      code: code ?? this.code,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! BannerResult) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => banners.hashCode ^ code.hashCode;
}
