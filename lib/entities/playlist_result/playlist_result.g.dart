// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistResult _$PlaylistResultFromJson(Map<String, dynamic> json) =>
    PlaylistResult(
      playlists: (json['playlists'] as List<dynamic>?)
          ?.map((e) => Playlist.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      code: json['code'] as int?,
      more: json['more'] as bool?,
      cat: json['cat'] as String?,
    );

Map<String, dynamic> _$PlaylistResultToJson(PlaylistResult instance) =>
    <String, dynamic>{
      'playlists': instance.playlists,
      'total': instance.total,
      'code': instance.code,
      'more': instance.more,
      'cat': instance.cat,
    };
