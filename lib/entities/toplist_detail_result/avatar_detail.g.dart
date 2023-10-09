// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvatarDetail _$AvatarDetailFromJson(Map<String, dynamic> json) => AvatarDetail(
      userType: json['userType'] as int?,
      identityLevel: json['identityLevel'] as int?,
      identityIconUrl: json['identityIconUrl'] as String?,
    );

Map<String, dynamic> _$AvatarDetailToJson(AvatarDetail instance) =>
    <String, dynamic>{
      'userType': instance.userType,
      'identityLevel': instance.identityLevel,
      'identityIconUrl': instance.identityIconUrl,
    };
