import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'al.dart';
import 'ar.dart';
import 'h.dart';
import 'hr.dart';
import 'l.dart';
import 'm.dart';
import 'sq.dart';

part 'track.g.dart';

@JsonSerializable()
class Track {
  final String? name;
  final int? id;
  final int? pst;
  final int? t;
  final List<Ar>? ar;
  final List<dynamic>? alia;
  final int? pop;
  final int? st;
  final String? rt;
  final int? fee;
  final int? v;
  final dynamic crbt;
  final String? cf;
  final Al? al;
  final int? dt;
  final H? h;
  final M? m;
  final L? l;
  final Sq? sq;
  final Hr? hr;
  final dynamic a;
  final String? cd;
  final int? no;
  final dynamic rtUrl;
  final int? ftype;
  final List<dynamic>? rtUrls;
  final int? djId;
  final int? copyright;
  @JsonKey(name: 's_id')
  final int? sId;
  final int? mark;
  final int? originCoverType;
  final dynamic originSongSimpleData;
  final dynamic tagPicList;
  final bool? resourceState;
  final int? version;
  final dynamic songJumpInfo;
  final dynamic entertainmentTags;
  final dynamic awardTags;
  final int? single;
  final dynamic noCopyrightRcmd;
  final int? rtype;
  final dynamic rurl;
  final int? mst;
  final int? cp;
  final int? mv;
  final int? publishTime;
  final List<String>? tns;

  const Track({
    this.name,
    this.id,
    this.pst,
    this.t,
    this.ar,
    this.alia,
    this.pop,
    this.st,
    this.rt,
    this.fee,
    this.v,
    this.crbt,
    this.cf,
    this.al,
    this.dt,
    this.h,
    this.m,
    this.l,
    this.sq,
    this.hr,
    this.a,
    this.cd,
    this.no,
    this.rtUrl,
    this.ftype,
    this.rtUrls,
    this.djId,
    this.copyright,
    this.sId,
    this.mark,
    this.originCoverType,
    this.originSongSimpleData,
    this.tagPicList,
    this.resourceState,
    this.version,
    this.songJumpInfo,
    this.entertainmentTags,
    this.awardTags,
    this.single,
    this.noCopyrightRcmd,
    this.rtype,
    this.rurl,
    this.mst,
    this.cp,
    this.mv,
    this.publishTime,
    this.tns,
  });

  @override
  String toString() {
    return 'Track(name: $name, id: $id, pst: $pst, t: $t, ar: $ar, alia: $alia, pop: $pop, st: $st, rt: $rt, fee: $fee, v: $v, crbt: $crbt, cf: $cf, al: $al, dt: $dt, h: $h, m: $m, l: $l, sq: $sq, hr: $hr, a: $a, cd: $cd, no: $no, rtUrl: $rtUrl, ftype: $ftype, rtUrls: $rtUrls, djId: $djId, copyright: $copyright, sId: $sId, mark: $mark, originCoverType: $originCoverType, originSongSimpleData: $originSongSimpleData, tagPicList: $tagPicList, resourceState: $resourceState, version: $version, songJumpInfo: $songJumpInfo, entertainmentTags: $entertainmentTags, awardTags: $awardTags, single: $single, noCopyrightRcmd: $noCopyrightRcmd, rtype: $rtype, rurl: $rurl, mst: $mst, cp: $cp, mv: $mv, publishTime: $publishTime, tns: $tns)';
  }

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);

  Map<String, dynamic> toJson() => _$TrackToJson(this);

  Track copyWith({
    String? name,
    int? id,
    int? pst,
    int? t,
    List<Ar>? ar,
    List<dynamic>? alia,
    int? pop,
    int? st,
    String? rt,
    int? fee,
    int? v,
    dynamic crbt,
    String? cf,
    Al? al,
    int? dt,
    H? h,
    M? m,
    L? l,
    Sq? sq,
    Hr? hr,
    dynamic a,
    String? cd,
    int? no,
    dynamic rtUrl,
    int? ftype,
    List<dynamic>? rtUrls,
    int? djId,
    int? copyright,
    int? sId,
    int? mark,
    int? originCoverType,
    dynamic originSongSimpleData,
    dynamic tagPicList,
    bool? resourceState,
    int? version,
    dynamic songJumpInfo,
    dynamic entertainmentTags,
    dynamic awardTags,
    int? single,
    dynamic noCopyrightRcmd,
    int? rtype,
    dynamic rurl,
    int? mst,
    int? cp,
    int? mv,
    int? publishTime,
    List<String>? tns,
  }) {
    return Track(
      name: name ?? this.name,
      id: id ?? this.id,
      pst: pst ?? this.pst,
      t: t ?? this.t,
      ar: ar ?? this.ar,
      alia: alia ?? this.alia,
      pop: pop ?? this.pop,
      st: st ?? this.st,
      rt: rt ?? this.rt,
      fee: fee ?? this.fee,
      v: v ?? this.v,
      crbt: crbt ?? this.crbt,
      cf: cf ?? this.cf,
      al: al ?? this.al,
      dt: dt ?? this.dt,
      h: h ?? this.h,
      m: m ?? this.m,
      l: l ?? this.l,
      sq: sq ?? this.sq,
      hr: hr ?? this.hr,
      a: a ?? this.a,
      cd: cd ?? this.cd,
      no: no ?? this.no,
      rtUrl: rtUrl ?? this.rtUrl,
      ftype: ftype ?? this.ftype,
      rtUrls: rtUrls ?? this.rtUrls,
      djId: djId ?? this.djId,
      copyright: copyright ?? this.copyright,
      sId: sId ?? this.sId,
      mark: mark ?? this.mark,
      originCoverType: originCoverType ?? this.originCoverType,
      originSongSimpleData: originSongSimpleData ?? this.originSongSimpleData,
      tagPicList: tagPicList ?? this.tagPicList,
      resourceState: resourceState ?? this.resourceState,
      version: version ?? this.version,
      songJumpInfo: songJumpInfo ?? this.songJumpInfo,
      entertainmentTags: entertainmentTags ?? this.entertainmentTags,
      awardTags: awardTags ?? this.awardTags,
      single: single ?? this.single,
      noCopyrightRcmd: noCopyrightRcmd ?? this.noCopyrightRcmd,
      rtype: rtype ?? this.rtype,
      rurl: rurl ?? this.rurl,
      mst: mst ?? this.mst,
      cp: cp ?? this.cp,
      mv: mv ?? this.mv,
      publishTime: publishTime ?? this.publishTime,
      tns: tns ?? this.tns,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Track) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      name.hashCode ^
      id.hashCode ^
      pst.hashCode ^
      t.hashCode ^
      ar.hashCode ^
      alia.hashCode ^
      pop.hashCode ^
      st.hashCode ^
      rt.hashCode ^
      fee.hashCode ^
      v.hashCode ^
      crbt.hashCode ^
      cf.hashCode ^
      al.hashCode ^
      dt.hashCode ^
      h.hashCode ^
      m.hashCode ^
      l.hashCode ^
      sq.hashCode ^
      hr.hashCode ^
      a.hashCode ^
      cd.hashCode ^
      no.hashCode ^
      rtUrl.hashCode ^
      ftype.hashCode ^
      rtUrls.hashCode ^
      djId.hashCode ^
      copyright.hashCode ^
      sId.hashCode ^
      mark.hashCode ^
      originCoverType.hashCode ^
      originSongSimpleData.hashCode ^
      tagPicList.hashCode ^
      resourceState.hashCode ^
      version.hashCode ^
      songJumpInfo.hashCode ^
      entertainmentTags.hashCode ^
      awardTags.hashCode ^
      single.hashCode ^
      noCopyrightRcmd.hashCode ^
      rtype.hashCode ^
      rurl.hashCode ^
      mst.hashCode ^
      cp.hashCode ^
      mv.hashCode ^
      publishTime.hashCode ^
      tns.hashCode;
}
