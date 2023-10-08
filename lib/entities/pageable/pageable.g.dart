// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pageable _$PageableFromJson(Map<String, dynamic> json) => Pageable(
      offset: json['offset'] as int?,
      limit: json['limit'] as int?,
      order: json['order'] as String?,
    );

Map<String, dynamic> _$PageableToJson(Pageable instance) => <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'order': instance.order,
    };
