// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerResult _$BannerResultFromJson(Map<String, dynamic> json) => BannerResult(
      banners: (json['banners'] as List<dynamic>)
          .map((e) => Banner.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as int,
    );

Map<String, dynamic> _$BannerResultToJson(BannerResult instance) =>
    <String, dynamic>{
      'banners': instance.banners,
      'code': instance.code,
    };
