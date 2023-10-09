// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privilege.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Privilege _$PrivilegeFromJson(Map<String, dynamic> json) => Privilege(
      id: json['id'] as int?,
      fee: json['fee'] as int?,
      payed: json['payed'] as int?,
      realPayed: json['realPayed'] as int?,
      st: json['st'] as int?,
      pl: json['pl'] as int?,
      dl: json['dl'] as int?,
      sp: json['sp'] as int?,
      cp: json['cp'] as int?,
      subp: json['subp'] as int?,
      cs: json['cs'] as bool?,
      maxbr: json['maxbr'] as int?,
      fl: json['fl'] as int?,
      pc: json['pc'],
      toast: json['toast'] as bool?,
      flag: json['flag'] as int?,
      paidBigBang: json['paidBigBang'] as bool?,
      preSell: json['preSell'] as bool?,
      playMaxbr: json['playMaxbr'] as int?,
      downloadMaxbr: json['downloadMaxbr'] as int?,
      maxBrLevel: json['maxBrLevel'] as String?,
      playMaxBrLevel: json['playMaxBrLevel'] as String?,
      downloadMaxBrLevel: json['downloadMaxBrLevel'] as String?,
      plLevel: json['plLevel'] as String?,
      dlLevel: json['dlLevel'] as String?,
      flLevel: json['flLevel'] as String?,
      rscl: json['rscl'],
      freeTrialPrivilege: json['freeTrialPrivilege'] == null
          ? null
          : FreeTrialPrivilege.fromJson(
              json['freeTrialPrivilege'] as Map<String, dynamic>),
      rightSource: json['rightSource'] as int?,
      chargeInfoList: (json['chargeInfoList'] as List<dynamic>?)
          ?.map((e) => ChargeInfoList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PrivilegeToJson(Privilege instance) => <String, dynamic>{
      'id': instance.id,
      'fee': instance.fee,
      'payed': instance.payed,
      'realPayed': instance.realPayed,
      'st': instance.st,
      'pl': instance.pl,
      'dl': instance.dl,
      'sp': instance.sp,
      'cp': instance.cp,
      'subp': instance.subp,
      'cs': instance.cs,
      'maxbr': instance.maxbr,
      'fl': instance.fl,
      'pc': instance.pc,
      'toast': instance.toast,
      'flag': instance.flag,
      'paidBigBang': instance.paidBigBang,
      'preSell': instance.preSell,
      'playMaxbr': instance.playMaxbr,
      'downloadMaxbr': instance.downloadMaxbr,
      'maxBrLevel': instance.maxBrLevel,
      'playMaxBrLevel': instance.playMaxBrLevel,
      'downloadMaxBrLevel': instance.downloadMaxBrLevel,
      'plLevel': instance.plLevel,
      'dlLevel': instance.dlLevel,
      'flLevel': instance.flLevel,
      'rscl': instance.rscl,
      'freeTrialPrivilege': instance.freeTrialPrivilege,
      'rightSource': instance.rightSource,
      'chargeInfoList': instance.chargeInfoList,
    };
