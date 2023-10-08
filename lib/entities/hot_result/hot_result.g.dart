// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotResult _$HotResultFromJson(Map<String, dynamic> json) => HotResult(
      code: json['code'] as int,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HotResultToJson(HotResult instance) => <String, dynamic>{
      'code': instance.code,
      'result': instance.result,
    };
