import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'creator.dart';
import 'subscriber.dart';
import 'track.dart';
import 'track_id.dart';

part 'playlist.g.dart';

@JsonSerializable()
class Playlist {
  final int? id;
  final String? name;
  final int? coverImgId;
  final String? coverImgUrl;
  @JsonKey(name: 'coverImgId_str')
  final String? coverImgIdStr;
  final int? adType;
  final int? userId;
  final int? createTime;
  final int? status;
  final bool? opRecommend;
  final bool? highQuality;
  final bool? newImported;
  final int? updateTime;
  final int? trackCount;
  final int? specialType;
  final int? privacy;
  final int? trackUpdateTime;
  final String? commentThreadId;
  final int? playCount;
  final int? trackNumberUpdateTime;
  final int? subscribedCount;
  final int? cloudTrackCount;
  final bool? ordered;
  final String? description;
  final List<dynamic>? tags;
  final dynamic updateFrequency;
  final int? backgroundCoverId;
  final dynamic backgroundCoverUrl;
  final int? titleImage;
  final dynamic titleImageUrl;
  final dynamic englishTitle;
  final dynamic officialPlaylistType;
  final bool? copied;
  final dynamic relateResType;
  final List<Subscriber>? subscribers;
  final bool? subscribed;
  final Creator? creator;
  final List<Track>? tracks;
  final dynamic videoIds;
  final dynamic videos;
  final List<TrackId>? trackIds;
  final dynamic bannedTrackIds;
  final dynamic mvResourceInfos;
  final int? shareCount;
  final int? commentCount;
  final dynamic remixVideo;
  final dynamic sharedUsers;
  final dynamic historySharedUsers;
  final String? gradeStatus;
  final dynamic score;
  final dynamic algTags;
  final int? trialMode;
  @JsonKey(name: 'ToplistType')
  final String? toplistType;

  const Playlist({
    this.id,
    this.name,
    this.coverImgId,
    this.coverImgUrl,
    this.coverImgIdStr,
    this.adType,
    this.userId,
    this.createTime,
    this.status,
    this.opRecommend,
    this.highQuality,
    this.newImported,
    this.updateTime,
    this.trackCount,
    this.specialType,
    this.privacy,
    this.trackUpdateTime,
    this.commentThreadId,
    this.playCount,
    this.trackNumberUpdateTime,
    this.subscribedCount,
    this.cloudTrackCount,
    this.ordered,
    this.description,
    this.tags,
    this.updateFrequency,
    this.backgroundCoverId,
    this.backgroundCoverUrl,
    this.titleImage,
    this.titleImageUrl,
    this.englishTitle,
    this.officialPlaylistType,
    this.copied,
    this.relateResType,
    this.subscribers,
    this.subscribed,
    this.creator,
    this.tracks,
    this.videoIds,
    this.videos,
    this.trackIds,
    this.bannedTrackIds,
    this.mvResourceInfos,
    this.shareCount,
    this.commentCount,
    this.remixVideo,
    this.sharedUsers,
    this.historySharedUsers,
    this.gradeStatus,
    this.score,
    this.algTags,
    this.trialMode,
    this.toplistType,
  });

  @override
  String toString() {
    return 'Playlist(id: $id, name: $name, coverImgId: $coverImgId, coverImgUrl: $coverImgUrl, coverImgIdStr: $coverImgIdStr, adType: $adType, userId: $userId, createTime: $createTime, status: $status, opRecommend: $opRecommend, highQuality: $highQuality, newImported: $newImported, updateTime: $updateTime, trackCount: $trackCount, specialType: $specialType, privacy: $privacy, trackUpdateTime: $trackUpdateTime, commentThreadId: $commentThreadId, playCount: $playCount, trackNumberUpdateTime: $trackNumberUpdateTime, subscribedCount: $subscribedCount, cloudTrackCount: $cloudTrackCount, ordered: $ordered, description: $description, tags: $tags, updateFrequency: $updateFrequency, backgroundCoverId: $backgroundCoverId, backgroundCoverUrl: $backgroundCoverUrl, titleImage: $titleImage, titleImageUrl: $titleImageUrl, englishTitle: $englishTitle, officialPlaylistType: $officialPlaylistType, copied: $copied, relateResType: $relateResType, subscribers: $subscribers, subscribed: $subscribed, creator: $creator, tracks: $tracks, videoIds: $videoIds, videos: $videos, trackIds: $trackIds, bannedTrackIds: $bannedTrackIds, mvResourceInfos: $mvResourceInfos, shareCount: $shareCount, commentCount: $commentCount, remixVideo: $remixVideo, sharedUsers: $sharedUsers, historySharedUsers: $historySharedUsers, gradeStatus: $gradeStatus, score: $score, algTags: $algTags, trialMode: $trialMode, toplistType: $toplistType)';
  }

  factory Playlist.fromJson(Map<String, dynamic> json) {
    return _$PlaylistFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlaylistToJson(this);

  Playlist copyWith({
    int? id,
    String? name,
    int? coverImgId,
    String? coverImgUrl,
    String? coverImgIdStr,
    int? adType,
    int? userId,
    int? createTime,
    int? status,
    bool? opRecommend,
    bool? highQuality,
    bool? newImported,
    int? updateTime,
    int? trackCount,
    int? specialType,
    int? privacy,
    int? trackUpdateTime,
    String? commentThreadId,
    int? playCount,
    int? trackNumberUpdateTime,
    int? subscribedCount,
    int? cloudTrackCount,
    bool? ordered,
    String? description,
    List<dynamic>? tags,
    dynamic updateFrequency,
    int? backgroundCoverId,
    dynamic backgroundCoverUrl,
    int? titleImage,
    dynamic titleImageUrl,
    dynamic englishTitle,
    dynamic officialPlaylistType,
    bool? copied,
    dynamic relateResType,
    List<Subscriber>? subscribers,
    bool? subscribed,
    Creator? creator,
    List<Track>? tracks,
    dynamic videoIds,
    dynamic videos,
    List<TrackId>? trackIds,
    dynamic bannedTrackIds,
    dynamic mvResourceInfos,
    int? shareCount,
    int? commentCount,
    dynamic remixVideo,
    dynamic sharedUsers,
    dynamic historySharedUsers,
    String? gradeStatus,
    dynamic score,
    dynamic algTags,
    int? trialMode,
    String? toplistType,
  }) {
    return Playlist(
      id: id ?? this.id,
      name: name ?? this.name,
      coverImgId: coverImgId ?? this.coverImgId,
      coverImgUrl: coverImgUrl ?? this.coverImgUrl,
      coverImgIdStr: coverImgIdStr ?? this.coverImgIdStr,
      adType: adType ?? this.adType,
      userId: userId ?? this.userId,
      createTime: createTime ?? this.createTime,
      status: status ?? this.status,
      opRecommend: opRecommend ?? this.opRecommend,
      highQuality: highQuality ?? this.highQuality,
      newImported: newImported ?? this.newImported,
      updateTime: updateTime ?? this.updateTime,
      trackCount: trackCount ?? this.trackCount,
      specialType: specialType ?? this.specialType,
      privacy: privacy ?? this.privacy,
      trackUpdateTime: trackUpdateTime ?? this.trackUpdateTime,
      commentThreadId: commentThreadId ?? this.commentThreadId,
      playCount: playCount ?? this.playCount,
      trackNumberUpdateTime:
          trackNumberUpdateTime ?? this.trackNumberUpdateTime,
      subscribedCount: subscribedCount ?? this.subscribedCount,
      cloudTrackCount: cloudTrackCount ?? this.cloudTrackCount,
      ordered: ordered ?? this.ordered,
      description: description ?? this.description,
      tags: tags ?? this.tags,
      updateFrequency: updateFrequency ?? this.updateFrequency,
      backgroundCoverId: backgroundCoverId ?? this.backgroundCoverId,
      backgroundCoverUrl: backgroundCoverUrl ?? this.backgroundCoverUrl,
      titleImage: titleImage ?? this.titleImage,
      titleImageUrl: titleImageUrl ?? this.titleImageUrl,
      englishTitle: englishTitle ?? this.englishTitle,
      officialPlaylistType: officialPlaylistType ?? this.officialPlaylistType,
      copied: copied ?? this.copied,
      relateResType: relateResType ?? this.relateResType,
      subscribers: subscribers ?? this.subscribers,
      subscribed: subscribed ?? this.subscribed,
      creator: creator ?? this.creator,
      tracks: tracks ?? this.tracks,
      videoIds: videoIds ?? this.videoIds,
      videos: videos ?? this.videos,
      trackIds: trackIds ?? this.trackIds,
      bannedTrackIds: bannedTrackIds ?? this.bannedTrackIds,
      mvResourceInfos: mvResourceInfos ?? this.mvResourceInfos,
      shareCount: shareCount ?? this.shareCount,
      commentCount: commentCount ?? this.commentCount,
      remixVideo: remixVideo ?? this.remixVideo,
      sharedUsers: sharedUsers ?? this.sharedUsers,
      historySharedUsers: historySharedUsers ?? this.historySharedUsers,
      gradeStatus: gradeStatus ?? this.gradeStatus,
      score: score ?? this.score,
      algTags: algTags ?? this.algTags,
      trialMode: trialMode ?? this.trialMode,
      toplistType: toplistType ?? this.toplistType,
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
      id.hashCode ^
      name.hashCode ^
      coverImgId.hashCode ^
      coverImgUrl.hashCode ^
      coverImgIdStr.hashCode ^
      adType.hashCode ^
      userId.hashCode ^
      createTime.hashCode ^
      status.hashCode ^
      opRecommend.hashCode ^
      highQuality.hashCode ^
      newImported.hashCode ^
      updateTime.hashCode ^
      trackCount.hashCode ^
      specialType.hashCode ^
      privacy.hashCode ^
      trackUpdateTime.hashCode ^
      commentThreadId.hashCode ^
      playCount.hashCode ^
      trackNumberUpdateTime.hashCode ^
      subscribedCount.hashCode ^
      cloudTrackCount.hashCode ^
      ordered.hashCode ^
      description.hashCode ^
      tags.hashCode ^
      updateFrequency.hashCode ^
      backgroundCoverId.hashCode ^
      backgroundCoverUrl.hashCode ^
      titleImage.hashCode ^
      titleImageUrl.hashCode ^
      englishTitle.hashCode ^
      officialPlaylistType.hashCode ^
      copied.hashCode ^
      relateResType.hashCode ^
      subscribers.hashCode ^
      subscribed.hashCode ^
      creator.hashCode ^
      tracks.hashCode ^
      videoIds.hashCode ^
      videos.hashCode ^
      trackIds.hashCode ^
      bannedTrackIds.hashCode ^
      mvResourceInfos.hashCode ^
      shareCount.hashCode ^
      commentCount.hashCode ^
      remixVideo.hashCode ^
      sharedUsers.hashCode ^
      historySharedUsers.hashCode ^
      gradeStatus.hashCode ^
      score.hashCode ^
      algTags.hashCode ^
      trialMode.hashCode ^
      toplistType.hashCode;
}
