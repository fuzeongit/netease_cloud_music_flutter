import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'creator.dart';
import 'subscriber.dart';

part 'playlist.g.dart';

@JsonSerializable()
class Playlist {
  final String? name;
  final int? id;
  final int? trackNumberUpdateTime;
  final int? status;
  final int? userId;
  final int? createTime;
  final int? updateTime;
  final int? subscribedCount;
  final int? trackCount;
  final int? cloudTrackCount;
  final String? coverImgUrl;
  final dynamic iconImgUrl;
  final int? coverImgId;
  final String? description;
  final List<String>? tags;
  final int? playCount;
  final int? trackUpdateTime;
  final int? specialType;
  final int? totalDuration;
  final Creator? creator;
  final dynamic tracks;
  final List<Subscriber>? subscribers;
  final bool? subscribed;
  final String? commentThreadId;
  final bool? newImported;
  final int? adType;
  final bool? highQuality;
  final int? privacy;
  final bool? ordered;
  final bool? anonimous;
  final int? coverStatus;
  final dynamic recommendInfo;
  final dynamic socialPlaylistCover;
  final dynamic recommendText;
  final dynamic coverText;
  final dynamic relateResType;
  final dynamic relateResId;
  final int? shareCount;
  @JsonKey(name: 'coverImgId_str')
  final String? coverImgIdStr;
  final String? alg;
  final int? commentCount;

  const Playlist({
    this.name,
    this.id,
    this.trackNumberUpdateTime,
    this.status,
    this.userId,
    this.createTime,
    this.updateTime,
    this.subscribedCount,
    this.trackCount,
    this.cloudTrackCount,
    this.coverImgUrl,
    this.iconImgUrl,
    this.coverImgId,
    this.description,
    this.tags,
    this.playCount,
    this.trackUpdateTime,
    this.specialType,
    this.totalDuration,
    this.creator,
    this.tracks,
    this.subscribers,
    this.subscribed,
    this.commentThreadId,
    this.newImported,
    this.adType,
    this.highQuality,
    this.privacy,
    this.ordered,
    this.anonimous,
    this.coverStatus,
    this.recommendInfo,
    this.socialPlaylistCover,
    this.recommendText,
    this.coverText,
    this.relateResType,
    this.relateResId,
    this.shareCount,
    this.coverImgIdStr,
    this.alg,
    this.commentCount,
  });

  @override
  String toString() {
    return 'Playlist(name: $name, id: $id, trackNumberUpdateTime: $trackNumberUpdateTime, status: $status, userId: $userId, createTime: $createTime, updateTime: $updateTime, subscribedCount: $subscribedCount, trackCount: $trackCount, cloudTrackCount: $cloudTrackCount, coverImgUrl: $coverImgUrl, iconImgUrl: $iconImgUrl, coverImgId: $coverImgId, description: $description, tags: $tags, playCount: $playCount, trackUpdateTime: $trackUpdateTime, specialType: $specialType, totalDuration: $totalDuration, creator: $creator, tracks: $tracks, subscribers: $subscribers, subscribed: $subscribed, commentThreadId: $commentThreadId, newImported: $newImported, adType: $adType, highQuality: $highQuality, privacy: $privacy, ordered: $ordered, anonimous: $anonimous, coverStatus: $coverStatus, recommendInfo: $recommendInfo, socialPlaylistCover: $socialPlaylistCover, recommendText: $recommendText, coverText: $coverText, relateResType: $relateResType, relateResId: $relateResId, shareCount: $shareCount, coverImgIdStr: $coverImgIdStr, alg: $alg, commentCount: $commentCount)';
  }

  factory Playlist.fromJson(Map<String, dynamic> json) {
    return _$PlaylistFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlaylistToJson(this);

  Playlist copyWith({
    String? name,
    int? id,
    int? trackNumberUpdateTime,
    int? status,
    int? userId,
    int? createTime,
    int? updateTime,
    int? subscribedCount,
    int? trackCount,
    int? cloudTrackCount,
    String? coverImgUrl,
    dynamic iconImgUrl,
    int? coverImgId,
    String? description,
    List<String>? tags,
    int? playCount,
    int? trackUpdateTime,
    int? specialType,
    int? totalDuration,
    Creator? creator,
    dynamic tracks,
    List<Subscriber>? subscribers,
    bool? subscribed,
    String? commentThreadId,
    bool? newImported,
    int? adType,
    bool? highQuality,
    int? privacy,
    bool? ordered,
    bool? anonimous,
    int? coverStatus,
    dynamic recommendInfo,
    dynamic socialPlaylistCover,
    dynamic recommendText,
    dynamic coverText,
    dynamic relateResType,
    dynamic relateResId,
    int? shareCount,
    String? coverImgIdStr,
    String? alg,
    int? commentCount,
  }) {
    return Playlist(
      name: name ?? this.name,
      id: id ?? this.id,
      trackNumberUpdateTime:
          trackNumberUpdateTime ?? this.trackNumberUpdateTime,
      status: status ?? this.status,
      userId: userId ?? this.userId,
      createTime: createTime ?? this.createTime,
      updateTime: updateTime ?? this.updateTime,
      subscribedCount: subscribedCount ?? this.subscribedCount,
      trackCount: trackCount ?? this.trackCount,
      cloudTrackCount: cloudTrackCount ?? this.cloudTrackCount,
      coverImgUrl: coverImgUrl ?? this.coverImgUrl,
      iconImgUrl: iconImgUrl ?? this.iconImgUrl,
      coverImgId: coverImgId ?? this.coverImgId,
      description: description ?? this.description,
      tags: tags ?? this.tags,
      playCount: playCount ?? this.playCount,
      trackUpdateTime: trackUpdateTime ?? this.trackUpdateTime,
      specialType: specialType ?? this.specialType,
      totalDuration: totalDuration ?? this.totalDuration,
      creator: creator ?? this.creator,
      tracks: tracks ?? this.tracks,
      subscribers: subscribers ?? this.subscribers,
      subscribed: subscribed ?? this.subscribed,
      commentThreadId: commentThreadId ?? this.commentThreadId,
      newImported: newImported ?? this.newImported,
      adType: adType ?? this.adType,
      highQuality: highQuality ?? this.highQuality,
      privacy: privacy ?? this.privacy,
      ordered: ordered ?? this.ordered,
      anonimous: anonimous ?? this.anonimous,
      coverStatus: coverStatus ?? this.coverStatus,
      recommendInfo: recommendInfo ?? this.recommendInfo,
      socialPlaylistCover: socialPlaylistCover ?? this.socialPlaylistCover,
      recommendText: recommendText ?? this.recommendText,
      coverText: coverText ?? this.coverText,
      relateResType: relateResType ?? this.relateResType,
      relateResId: relateResId ?? this.relateResId,
      shareCount: shareCount ?? this.shareCount,
      coverImgIdStr: coverImgIdStr ?? this.coverImgIdStr,
      alg: alg ?? this.alg,
      commentCount: commentCount ?? this.commentCount,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Playlist) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      name.hashCode ^
      id.hashCode ^
      trackNumberUpdateTime.hashCode ^
      status.hashCode ^
      userId.hashCode ^
      createTime.hashCode ^
      updateTime.hashCode ^
      subscribedCount.hashCode ^
      trackCount.hashCode ^
      cloudTrackCount.hashCode ^
      coverImgUrl.hashCode ^
      iconImgUrl.hashCode ^
      coverImgId.hashCode ^
      description.hashCode ^
      tags.hashCode ^
      playCount.hashCode ^
      trackUpdateTime.hashCode ^
      specialType.hashCode ^
      totalDuration.hashCode ^
      creator.hashCode ^
      tracks.hashCode ^
      subscribers.hashCode ^
      subscribed.hashCode ^
      commentThreadId.hashCode ^
      newImported.hashCode ^
      adType.hashCode ^
      highQuality.hashCode ^
      privacy.hashCode ^
      ordered.hashCode ^
      anonimous.hashCode ^
      coverStatus.hashCode ^
      recommendInfo.hashCode ^
      socialPlaylistCover.hashCode ^
      recommendText.hashCode ^
      coverText.hashCode ^
      relateResType.hashCode ^
      relateResId.hashCode ^
      shareCount.hashCode ^
      coverImgIdStr.hashCode ^
      alg.hashCode ^
      commentCount.hashCode;
}
