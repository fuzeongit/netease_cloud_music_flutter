// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dj_radio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DjRadio _$DjRadioFromJson(Map<String, dynamic> json) => DjRadio(
      id: json['id'] as int?,
      name: json['name'] as String?,
      picUrl: json['picUrl'] as String?,
      programCount: json['programCount'] as int?,
      subCount: json['subCount'] as int?,
      createTime: json['createTime'] as int?,
      categoryId: json['categoryId'] as int?,
      category: json['category'] as String?,
      rcmdtext: json['rcmdtext'] as String?,
      radioFeeType: json['radioFeeType'] as int?,
      feeScope: json['feeScope'] as int?,
      playCount: json['playCount'] as int?,
      subed: json['subed'] as bool?,
      dj: json['dj'] == null
          ? null
          : Dj.fromJson(json['dj'] as Map<String, dynamic>),
      copywriter: json['copywriter'] as String?,
      buyed: json['buyed'] as bool?,
    );

Map<String, dynamic> _$DjRadioToJson(DjRadio instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'picUrl': instance.picUrl,
      'programCount': instance.programCount,
      'subCount': instance.subCount,
      'createTime': instance.createTime,
      'categoryId': instance.categoryId,
      'category': instance.category,
      'rcmdtext': instance.rcmdtext,
      'radioFeeType': instance.radioFeeType,
      'feeScope': instance.feeScope,
      'playCount': instance.playCount,
      'subed': instance.subed,
      'dj': instance.dj,
      'copywriter': instance.copywriter,
      'buyed': instance.buyed,
    };
