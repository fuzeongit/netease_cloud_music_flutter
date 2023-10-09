import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'avatar_detail.g.dart';

@JsonSerializable()
class AvatarDetail {
  final int? userType;
  final int? identityLevel;
  final String? identityIconUrl;

  const AvatarDetail({
    this.userType,
    this.identityLevel,
    this.identityIconUrl,
  });

  @override
  String toString() {
    return 'AvatarDetail(userType: $userType, identityLevel: $identityLevel, identityIconUrl: $identityIconUrl)';
  }

  factory AvatarDetail.fromJson(Map<String, dynamic> json) {
    return _$AvatarDetailFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AvatarDetailToJson(this);

  AvatarDetail copyWith({
    int? userType,
    int? identityLevel,
    String? identityIconUrl,
  }) {
    return AvatarDetail(
      userType: userType ?? this.userType,
      identityLevel: identityLevel ?? this.identityLevel,
      identityIconUrl: identityIconUrl ?? this.identityIconUrl,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AvatarDetail) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      userType.hashCode ^ identityLevel.hashCode ^ identityIconUrl.hashCode;
}
