import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'toplist_item.g.dart';

@JsonSerializable()
class ToplistItem {
  final List<dynamic>? subscribers;
  final dynamic subscribed;
  final dynamic creator;
  final dynamic artists;
  final dynamic tracks;
  final String? updateFrequency;
  final int? backgroundCoverId;
  final dynamic backgroundCoverUrl;
  final int? titleImage;
  final dynamic coverText;
  final dynamic titleImageUrl;
  final dynamic coverImageUrl;
  final dynamic iconImageUrl;
  final dynamic englishTitle;
  final bool? opRecommend;
  final dynamic recommendInfo;
  final dynamic socialPlaylistCover;
  final int? tsSongCount;
  final int? subscribedCount;
  final int? cloudTrackCount;
  final int? trackNumberUpdateTime;
  final int? adType;
  final bool? highQuality;
  final int? specialType;
  final int? updateTime;
  final bool? newImported;
  final bool? anonimous;
  final int? coverImgId;
  final int? trackCount;
  final String? coverImgUrl;
  final int? trackUpdateTime;
  final int? totalDuration;
  final String? commentThreadId;
  final int? privacy;
  final int? playCount;
  final int? createTime;
  final bool? ordered;
  final String? description;
  final int? status;
  final List<dynamic>? tags;
  final int? userId;
  final String? name;
  final int? id;
  @JsonKey(name: 'coverImgId_str')
  final String? coverImgIdStr;
  @JsonKey(name: 'ToplistType')
  final String? toplistType;

  const ToplistItem({
    this.subscribers,
    this.subscribed,
    this.creator,
    this.artists,
    this.tracks,
    this.updateFrequency,
    this.backgroundCoverId,
    this.backgroundCoverUrl,
    this.titleImage,
    this.coverText,
    this.titleImageUrl,
    this.coverImageUrl,
    this.iconImageUrl,
    this.englishTitle,
    this.opRecommend,
    this.recommendInfo,
    this.socialPlaylistCover,
    this.tsSongCount,
    this.subscribedCount,
    this.cloudTrackCount,
    this.trackNumberUpdateTime,
    this.adType,
    this.highQuality,
    this.specialType,
    this.updateTime,
    this.newImported,
    this.anonimous,
    this.coverImgId,
    this.trackCount,
    this.coverImgUrl,
    this.trackUpdateTime,
    this.totalDuration,
    this.commentThreadId,
    this.privacy,
    this.playCount,
    this.createTime,
    this.ordered,
    this.description,
    this.status,
    this.tags,
    this.userId,
    this.name,
    this.id,
    this.coverImgIdStr,
    this.toplistType,
  });

  @override
  String toString() {
    return 'List(subscribers: $subscribers, subscribed: $subscribed, creator: $creator, artists: $artists, tracks: $tracks, updateFrequency: $updateFrequency, backgroundCoverId: $backgroundCoverId, backgroundCoverUrl: $backgroundCoverUrl, titleImage: $titleImage, coverText: $coverText, titleImageUrl: $titleImageUrl, coverImageUrl: $coverImageUrl, iconImageUrl: $iconImageUrl, englishTitle: $englishTitle, opRecommend: $opRecommend, recommendInfo: $recommendInfo, socialPlaylistCover: $socialPlaylistCover, tsSongCount: $tsSongCount, subscribedCount: $subscribedCount, cloudTrackCount: $cloudTrackCount, trackNumberUpdateTime: $trackNumberUpdateTime, adType: $adType, highQuality: $highQuality, specialType: $specialType, updateTime: $updateTime, newImported: $newImported, anonimous: $anonimous, coverImgId: $coverImgId, trackCount: $trackCount, coverImgUrl: $coverImgUrl, trackUpdateTime: $trackUpdateTime, totalDuration: $totalDuration, commentThreadId: $commentThreadId, privacy: $privacy, playCount: $playCount, createTime: $createTime, ordered: $ordered, description: $description, status: $status, tags: $tags, userId: $userId, name: $name, id: $id, coverImgIdStr: $coverImgIdStr, toplistType: $toplistType)';
  }

  factory ToplistItem.fromJson(Map<String, dynamic> json) =>
      _$ToplistItemFromJson(json);

  Map<String, dynamic> toJson() => _$ToplistItemToJson(this);

  ToplistItem copyWith({
    List<dynamic>? subscribers,
    dynamic subscribed,
    dynamic creator,
    dynamic artists,
    dynamic tracks,
    String? updateFrequency,
    int? backgroundCoverId,
    dynamic backgroundCoverUrl,
    int? titleImage,
    dynamic coverText,
    dynamic titleImageUrl,
    dynamic coverImageUrl,
    dynamic iconImageUrl,
    dynamic englishTitle,
    bool? opRecommend,
    dynamic recommendInfo,
    dynamic socialPlaylistCover,
    int? tsSongCount,
    int? subscribedCount,
    int? cloudTrackCount,
    int? trackNumberUpdateTime,
    int? adType,
    bool? highQuality,
    int? specialType,
    int? updateTime,
    bool? newImported,
    bool? anonimous,
    int? coverImgId,
    int? trackCount,
    String? coverImgUrl,
    int? trackUpdateTime,
    int? totalDuration,
    String? commentThreadId,
    int? privacy,
    int? playCount,
    int? createTime,
    bool? ordered,
    String? description,
    int? status,
    List<dynamic>? tags,
    int? userId,
    String? name,
    int? id,
    String? coverImgIdStr,
    String? toplistType,
  }) {
    return ToplistItem(
      subscribers: subscribers ?? this.subscribers,
      subscribed: subscribed ?? this.subscribed,
      creator: creator ?? this.creator,
      artists: artists ?? this.artists,
      tracks: tracks ?? this.tracks,
      updateFrequency: updateFrequency ?? this.updateFrequency,
      backgroundCoverId: backgroundCoverId ?? this.backgroundCoverId,
      backgroundCoverUrl: backgroundCoverUrl ?? this.backgroundCoverUrl,
      titleImage: titleImage ?? this.titleImage,
      coverText: coverText ?? this.coverText,
      titleImageUrl: titleImageUrl ?? this.titleImageUrl,
      coverImageUrl: coverImageUrl ?? this.coverImageUrl,
      iconImageUrl: iconImageUrl ?? this.iconImageUrl,
      englishTitle: englishTitle ?? this.englishTitle,
      opRecommend: opRecommend ?? this.opRecommend,
      recommendInfo: recommendInfo ?? this.recommendInfo,
      socialPlaylistCover: socialPlaylistCover ?? this.socialPlaylistCover,
      tsSongCount: tsSongCount ?? this.tsSongCount,
      subscribedCount: subscribedCount ?? this.subscribedCount,
      cloudTrackCount: cloudTrackCount ?? this.cloudTrackCount,
      trackNumberUpdateTime:
          trackNumberUpdateTime ?? this.trackNumberUpdateTime,
      adType: adType ?? this.adType,
      highQuality: highQuality ?? this.highQuality,
      specialType: specialType ?? this.specialType,
      updateTime: updateTime ?? this.updateTime,
      newImported: newImported ?? this.newImported,
      anonimous: anonimous ?? this.anonimous,
      coverImgId: coverImgId ?? this.coverImgId,
      trackCount: trackCount ?? this.trackCount,
      coverImgUrl: coverImgUrl ?? this.coverImgUrl,
      trackUpdateTime: trackUpdateTime ?? this.trackUpdateTime,
      totalDuration: totalDuration ?? this.totalDuration,
      commentThreadId: commentThreadId ?? this.commentThreadId,
      privacy: privacy ?? this.privacy,
      playCount: playCount ?? this.playCount,
      createTime: createTime ?? this.createTime,
      ordered: ordered ?? this.ordered,
      description: description ?? this.description,
      status: status ?? this.status,
      tags: tags ?? this.tags,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      id: id ?? this.id,
      coverImgIdStr: coverImgIdStr ?? this.coverImgIdStr,
      toplistType: toplistType ?? this.toplistType,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ToplistItem) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      subscribers.hashCode ^
      subscribed.hashCode ^
      creator.hashCode ^
      artists.hashCode ^
      tracks.hashCode ^
      updateFrequency.hashCode ^
      backgroundCoverId.hashCode ^
      backgroundCoverUrl.hashCode ^
      titleImage.hashCode ^
      coverText.hashCode ^
      titleImageUrl.hashCode ^
      coverImageUrl.hashCode ^
      iconImageUrl.hashCode ^
      englishTitle.hashCode ^
      opRecommend.hashCode ^
      recommendInfo.hashCode ^
      socialPlaylistCover.hashCode ^
      tsSongCount.hashCode ^
      subscribedCount.hashCode ^
      cloudTrackCount.hashCode ^
      trackNumberUpdateTime.hashCode ^
      adType.hashCode ^
      highQuality.hashCode ^
      specialType.hashCode ^
      updateTime.hashCode ^
      newImported.hashCode ^
      anonimous.hashCode ^
      coverImgId.hashCode ^
      trackCount.hashCode ^
      coverImgUrl.hashCode ^
      trackUpdateTime.hashCode ^
      totalDuration.hashCode ^
      commentThreadId.hashCode ^
      privacy.hashCode ^
      playCount.hashCode ^
      createTime.hashCode ^
      ordered.hashCode ^
      description.hashCode ^
      status.hashCode ^
      tags.hashCode ^
      userId.hashCode ^
      name.hashCode ^
      id.hashCode ^
      coverImgIdStr.hashCode ^
      toplistType.hashCode;
}
