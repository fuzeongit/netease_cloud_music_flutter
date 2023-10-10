// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_detail_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistDetailResult _$ToplistDetailResultFromJson(Map<String, dynamic> json) =>
    PlaylistDetailResult(
      code: json['code'] as int?,
      relatedVideos: json['relatedVideos'],
      playlist: json['playlist'] == null
          ? null
          : Playlist.fromJson(json['playlist'] as Map<String, dynamic>),
      urls: json['urls'],
      privileges: (json['privileges'] as List<dynamic>?)
          ?.map((e) => Privilege.fromJson(e as Map<String, dynamic>))
          .toList(),
      sharedPrivilege: json['sharedPrivilege'],
      resEntrance: json['resEntrance'],
      fromUsers: json['fromUsers'],
      fromUserCount: json['fromUserCount'] as int?,
      songFromUsers: json['songFromUsers'],
    );

Map<String, dynamic> _$ToplistDetailResultToJson(
        PlaylistDetailResult instance) =>
    <String, dynamic>{
      'code': instance.code,
      'relatedVideos': instance.relatedVideos,
      'playlist': instance.playlist,
      'urls': instance.urls,
      'privileges': instance.privileges,
      'sharedPrivilege': instance.sharedPrivilege,
      'resEntrance': instance.resEntrance,
      'fromUsers': instance.fromUsers,
      'fromUserCount': instance.fromUserCount,
      'songFromUsers': instance.songFromUsers,
    };
