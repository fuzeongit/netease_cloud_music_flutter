// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toplist_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToplistResult _$ToplistResultFromJson(Map<String, dynamic> json) =>
    ToplistResult(
      code: json['code'] as int,
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => ToplistItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      artistToplist: json['artistToplist'] == null
          ? null
          : ArtistToplist.fromJson(
              json['artistToplist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ToplistResultToJson(ToplistResult instance) =>
    <String, dynamic>{
      'code': instance.code,
      'list': instance.list,
      'artistToplist': instance.artistToplist,
    };
