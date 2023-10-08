import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscriber.g.dart';

@JsonSerializable()
class Subscriber {
  final bool? defaultAvatar;
  final int? province;
  final int? authStatus;
  final bool? followed;
  final String? avatarUrl;
  final int? accountStatus;
  final int? gender;
  final int? city;
  final int? birthday;
  final int? userId;
  final int? userType;
  final String? nickname;
  final String? signature;
  final String? description;
  final String? detailDescription;
  final int? avatarImgId;
  final int? backgroundImgId;
  final String? backgroundUrl;
  final int? authority;
  final bool? mutual;
  final dynamic expertTags;
  final dynamic experts;
  final int? djStatus;
  final int? vipType;
  final dynamic remarkName;
  final int? authenticationTypes;
  final dynamic avatarDetail;
  final String? avatarImgIdStr;
  final String? backgroundImgIdStr;
  final bool? anchor;

  const Subscriber({
    this.defaultAvatar,
    this.province,
    this.authStatus,
    this.followed,
    this.avatarUrl,
    this.accountStatus,
    this.gender,
    this.city,
    this.birthday,
    this.userId,
    this.userType,
    this.nickname,
    this.signature,
    this.description,
    this.detailDescription,
    this.avatarImgId,
    this.backgroundImgId,
    this.backgroundUrl,
    this.authority,
    this.mutual,
    this.expertTags,
    this.experts,
    this.djStatus,
    this.vipType,
    this.remarkName,
    this.authenticationTypes,
    this.avatarDetail,
    this.avatarImgIdStr,
    this.backgroundImgIdStr,
    this.anchor,
  });

  @override
  String toString() {
    return 'Subscriber(defaultAvatar: $defaultAvatar, province: $province, authStatus: $authStatus, followed: $followed, avatarUrl: $avatarUrl, accountStatus: $accountStatus, gender: $gender, city: $city, birthday: $birthday, userId: $userId, userType: $userType, nickname: $nickname, signature: $signature, description: $description, detailDescription: $detailDescription, avatarImgId: $avatarImgId, backgroundImgId: $backgroundImgId, backgroundUrl: $backgroundUrl, authority: $authority, mutual: $mutual, expertTags: $expertTags, experts: $experts, djStatus: $djStatus, vipType: $vipType, remarkName: $remarkName, authenticationTypes: $authenticationTypes, avatarDetail: $avatarDetail, avatarImgIdStr: $avatarImgIdStr, backgroundImgIdStr: $backgroundImgIdStr, anchor: $anchor, avatarImgIdStr: $avatarImgIdStr)';
  }

  factory Subscriber.fromJson(Map<String, dynamic> json) {
    return _$SubscriberFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SubscriberToJson(this);

  Subscriber copyWith({
    bool? defaultAvatar,
    int? province,
    int? authStatus,
    bool? followed,
    String? avatarUrl,
    int? accountStatus,
    int? gender,
    int? city,
    int? birthday,
    int? userId,
    int? userType,
    String? nickname,
    String? signature,
    String? description,
    String? detailDescription,
    int? avatarImgId,
    int? backgroundImgId,
    String? backgroundUrl,
    int? authority,
    bool? mutual,
    dynamic expertTags,
    dynamic experts,
    int? djStatus,
    int? vipType,
    dynamic remarkName,
    int? authenticationTypes,
    dynamic avatarDetail,
    String? avatarImgIdStr,
    String? backgroundImgIdStr,
    bool? anchor,
  }) {
    return Subscriber(
      defaultAvatar: defaultAvatar ?? this.defaultAvatar,
      province: province ?? this.province,
      authStatus: authStatus ?? this.authStatus,
      followed: followed ?? this.followed,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      accountStatus: accountStatus ?? this.accountStatus,
      gender: gender ?? this.gender,
      city: city ?? this.city,
      birthday: birthday ?? this.birthday,
      userId: userId ?? this.userId,
      userType: userType ?? this.userType,
      nickname: nickname ?? this.nickname,
      signature: signature ?? this.signature,
      description: description ?? this.description,
      detailDescription: detailDescription ?? this.detailDescription,
      avatarImgId: avatarImgId ?? this.avatarImgId,
      backgroundImgId: backgroundImgId ?? this.backgroundImgId,
      backgroundUrl: backgroundUrl ?? this.backgroundUrl,
      authority: authority ?? this.authority,
      mutual: mutual ?? this.mutual,
      expertTags: expertTags ?? this.expertTags,
      experts: experts ?? this.experts,
      djStatus: djStatus ?? this.djStatus,
      vipType: vipType ?? this.vipType,
      remarkName: remarkName ?? this.remarkName,
      authenticationTypes: authenticationTypes ?? this.authenticationTypes,
      avatarDetail: avatarDetail ?? this.avatarDetail,
      avatarImgIdStr: avatarImgIdStr ?? this.avatarImgIdStr,
      backgroundImgIdStr: backgroundImgIdStr ?? this.backgroundImgIdStr,
      anchor: anchor ?? this.anchor,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Subscriber) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      defaultAvatar.hashCode ^
      province.hashCode ^
      authStatus.hashCode ^
      followed.hashCode ^
      avatarUrl.hashCode ^
      accountStatus.hashCode ^
      gender.hashCode ^
      city.hashCode ^
      birthday.hashCode ^
      userId.hashCode ^
      userType.hashCode ^
      nickname.hashCode ^
      signature.hashCode ^
      description.hashCode ^
      detailDescription.hashCode ^
      avatarImgId.hashCode ^
      backgroundImgId.hashCode ^
      backgroundUrl.hashCode ^
      authority.hashCode ^
      mutual.hashCode ^
      expertTags.hashCode ^
      experts.hashCode ^
      djStatus.hashCode ^
      vipType.hashCode ^
      remarkName.hashCode ^
      authenticationTypes.hashCode ^
      avatarDetail.hashCode ^
      avatarImgIdStr.hashCode ^
      backgroundImgIdStr.hashCode ^
      anchor.hashCode ^
      avatarImgIdStr.hashCode;
}
