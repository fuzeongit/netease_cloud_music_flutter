import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'playlist.dart';
import 'privilege.dart';

part 'playlist_detail_result.g.dart';

@JsonSerializable()
class PlaylistDetailResult {
  final int? code;
  final dynamic relatedVideos;
  final Playlist? playlist;
  final dynamic urls;
  final List<Privilege>? privileges;
  final dynamic sharedPrivilege;
  final dynamic resEntrance;
  final dynamic fromUsers;
  final int? fromUserCount;
  final dynamic songFromUsers;

  const PlaylistDetailResult({
    this.code,
    this.relatedVideos,
    this.playlist,
    this.urls,
    this.privileges,
    this.sharedPrivilege,
    this.resEntrance,
    this.fromUsers,
    this.fromUserCount,
    this.songFromUsers,
  });

  @override
  String toString() {
    return 'PlaylistDetailResult(code: $code, relatedVideos: $relatedVideos, playlist: $playlist, urls: $urls, privileges: $privileges, sharedPrivilege: $sharedPrivilege, resEntrance: $resEntrance, fromUsers: $fromUsers, fromUserCount: $fromUserCount, songFromUsers: $songFromUsers)';
  }

  factory PlaylistDetailResult.fromJson(Map<String, dynamic> json) {
    return _$ToplistDetailResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ToplistDetailResultToJson(this);

  PlaylistDetailResult copyWith({
    int? code,
    dynamic relatedVideos,
    Playlist? playlist,
    dynamic urls,
    List<Privilege>? privileges,
    dynamic sharedPrivilege,
    dynamic resEntrance,
    dynamic fromUsers,
    int? fromUserCount,
    dynamic songFromUsers,
  }) {
    return PlaylistDetailResult(
      code: code ?? this.code,
      relatedVideos: relatedVideos ?? this.relatedVideos,
      playlist: playlist ?? this.playlist,
      urls: urls ?? this.urls,
      privileges: privileges ?? this.privileges,
      sharedPrivilege: sharedPrivilege ?? this.sharedPrivilege,
      resEntrance: resEntrance ?? this.resEntrance,
      fromUsers: fromUsers ?? this.fromUsers,
      fromUserCount: fromUserCount ?? this.fromUserCount,
      songFromUsers: songFromUsers ?? this.songFromUsers,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PlaylistDetailResult) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      code.hashCode ^
      relatedVideos.hashCode ^
      playlist.hashCode ^
      urls.hashCode ^
      privileges.hashCode ^
      sharedPrivilege.hashCode ^
      resEntrance.hashCode ^
      fromUsers.hashCode ^
      fromUserCount.hashCode ^
      songFromUsers.hashCode;
}
