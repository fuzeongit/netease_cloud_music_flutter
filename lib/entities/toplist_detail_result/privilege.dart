import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'charge_info_list.dart';
import 'free_trial_privilege.dart';

part 'privilege.g.dart';

@JsonSerializable()
class Privilege {
  final int? id;
  final int? fee;
  final int? payed;
  final int? realPayed;
  final int? st;
  final int? pl;
  final int? dl;
  final int? sp;
  final int? cp;
  final int? subp;
  final bool? cs;
  final int? maxbr;
  final int? fl;
  final dynamic pc;
  final bool? toast;
  final int? flag;
  final bool? paidBigBang;
  final bool? preSell;
  final int? playMaxbr;
  final int? downloadMaxbr;
  final String? maxBrLevel;
  final String? playMaxBrLevel;
  final String? downloadMaxBrLevel;
  final String? plLevel;
  final String? dlLevel;
  final String? flLevel;
  final dynamic rscl;
  final FreeTrialPrivilege? freeTrialPrivilege;
  final int? rightSource;
  final List<ChargeInfoList>? chargeInfoList;

  const Privilege({
    this.id,
    this.fee,
    this.payed,
    this.realPayed,
    this.st,
    this.pl,
    this.dl,
    this.sp,
    this.cp,
    this.subp,
    this.cs,
    this.maxbr,
    this.fl,
    this.pc,
    this.toast,
    this.flag,
    this.paidBigBang,
    this.preSell,
    this.playMaxbr,
    this.downloadMaxbr,
    this.maxBrLevel,
    this.playMaxBrLevel,
    this.downloadMaxBrLevel,
    this.plLevel,
    this.dlLevel,
    this.flLevel,
    this.rscl,
    this.freeTrialPrivilege,
    this.rightSource,
    this.chargeInfoList,
  });

  @override
  String toString() {
    return 'Privilege(id: $id, fee: $fee, payed: $payed, realPayed: $realPayed, st: $st, pl: $pl, dl: $dl, sp: $sp, cp: $cp, subp: $subp, cs: $cs, maxbr: $maxbr, fl: $fl, pc: $pc, toast: $toast, flag: $flag, paidBigBang: $paidBigBang, preSell: $preSell, playMaxbr: $playMaxbr, downloadMaxbr: $downloadMaxbr, maxBrLevel: $maxBrLevel, playMaxBrLevel: $playMaxBrLevel, downloadMaxBrLevel: $downloadMaxBrLevel, plLevel: $plLevel, dlLevel: $dlLevel, flLevel: $flLevel, rscl: $rscl, freeTrialPrivilege: $freeTrialPrivilege, rightSource: $rightSource, chargeInfoList: $chargeInfoList)';
  }

  factory Privilege.fromJson(Map<String, dynamic> json) {
    return _$PrivilegeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PrivilegeToJson(this);

  Privilege copyWith({
    int? id,
    int? fee,
    int? payed,
    int? realPayed,
    int? st,
    int? pl,
    int? dl,
    int? sp,
    int? cp,
    int? subp,
    bool? cs,
    int? maxbr,
    int? fl,
    dynamic pc,
    bool? toast,
    int? flag,
    bool? paidBigBang,
    bool? preSell,
    int? playMaxbr,
    int? downloadMaxbr,
    String? maxBrLevel,
    String? playMaxBrLevel,
    String? downloadMaxBrLevel,
    String? plLevel,
    String? dlLevel,
    String? flLevel,
    dynamic rscl,
    FreeTrialPrivilege? freeTrialPrivilege,
    int? rightSource,
    List<ChargeInfoList>? chargeInfoList,
  }) {
    return Privilege(
      id: id ?? this.id,
      fee: fee ?? this.fee,
      payed: payed ?? this.payed,
      realPayed: realPayed ?? this.realPayed,
      st: st ?? this.st,
      pl: pl ?? this.pl,
      dl: dl ?? this.dl,
      sp: sp ?? this.sp,
      cp: cp ?? this.cp,
      subp: subp ?? this.subp,
      cs: cs ?? this.cs,
      maxbr: maxbr ?? this.maxbr,
      fl: fl ?? this.fl,
      pc: pc ?? this.pc,
      toast: toast ?? this.toast,
      flag: flag ?? this.flag,
      paidBigBang: paidBigBang ?? this.paidBigBang,
      preSell: preSell ?? this.preSell,
      playMaxbr: playMaxbr ?? this.playMaxbr,
      downloadMaxbr: downloadMaxbr ?? this.downloadMaxbr,
      maxBrLevel: maxBrLevel ?? this.maxBrLevel,
      playMaxBrLevel: playMaxBrLevel ?? this.playMaxBrLevel,
      downloadMaxBrLevel: downloadMaxBrLevel ?? this.downloadMaxBrLevel,
      plLevel: plLevel ?? this.plLevel,
      dlLevel: dlLevel ?? this.dlLevel,
      flLevel: flLevel ?? this.flLevel,
      rscl: rscl ?? this.rscl,
      freeTrialPrivilege: freeTrialPrivilege ?? this.freeTrialPrivilege,
      rightSource: rightSource ?? this.rightSource,
      chargeInfoList: chargeInfoList ?? this.chargeInfoList,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Privilege) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      fee.hashCode ^
      payed.hashCode ^
      realPayed.hashCode ^
      st.hashCode ^
      pl.hashCode ^
      dl.hashCode ^
      sp.hashCode ^
      cp.hashCode ^
      subp.hashCode ^
      cs.hashCode ^
      maxbr.hashCode ^
      fl.hashCode ^
      pc.hashCode ^
      toast.hashCode ^
      flag.hashCode ^
      paidBigBang.hashCode ^
      preSell.hashCode ^
      playMaxbr.hashCode ^
      downloadMaxbr.hashCode ^
      maxBrLevel.hashCode ^
      playMaxBrLevel.hashCode ^
      downloadMaxBrLevel.hashCode ^
      plLevel.hashCode ^
      dlLevel.hashCode ^
      flLevel.hashCode ^
      rscl.hashCode ^
      freeTrialPrivilege.hashCode ^
      rightSource.hashCode ^
      chargeInfoList.hashCode;
}
