// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dj_hot_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DjHotResult _$DjHotResultFromJson(Map<String, dynamic> json) => DjHotResult(
      djRadios: (json['djRadios'] as List<dynamic>)
          .map((e) => DjRadio.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['hasMore'] as bool,
      code: json['code'] as int,
    );

Map<String, dynamic> _$DjHotResultToJson(DjHotResult instance) =>
    <String, dynamic>{
      'djRadios': instance.djRadios,
      'hasMore': instance.hasMore,
      'code': instance.code,
    };
