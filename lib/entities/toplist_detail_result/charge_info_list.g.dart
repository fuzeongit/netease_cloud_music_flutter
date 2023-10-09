// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_info_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeInfoList _$ChargeInfoListFromJson(Map<String, dynamic> json) =>
    ChargeInfoList(
      rate: json['rate'] as int?,
      chargeUrl: json['chargeUrl'],
      chargeMessage: json['chargeMessage'],
      chargeType: json['chargeType'] as int?,
    );

Map<String, dynamic> _$ChargeInfoListToJson(ChargeInfoList instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'chargeUrl': instance.chargeUrl,
      'chargeMessage': instance.chargeMessage,
      'chargeType': instance.chargeType,
    };
