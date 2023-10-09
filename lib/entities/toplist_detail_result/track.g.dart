// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Track _$TrackFromJson(Map<String, dynamic> json) => Track(
      name: json['name'] as String?,
      id: json['id'] as int?,
      pst: json['pst'] as int?,
      t: json['t'] as int?,
      ar: (json['ar'] as List<dynamic>?)
          ?.map((e) => Ar.fromJson(e as Map<String, dynamic>))
          .toList(),
      alia: json['alia'] as List<dynamic>?,
      pop: json['pop'] as int?,
      st: json['st'] as int?,
      rt: json['rt'] as String?,
      fee: json['fee'] as int?,
      v: json['v'] as int?,
      crbt: json['crbt'],
      cf: json['cf'] as String?,
      al: json['al'] == null
          ? null
          : Al.fromJson(json['al'] as Map<String, dynamic>),
      dt: json['dt'] as int?,
      h: json['h'] == null
          ? null
          : H.fromJson(json['h'] as Map<String, dynamic>),
      m: json['m'] == null
          ? null
          : M.fromJson(json['m'] as Map<String, dynamic>),
      l: json['l'] == null
          ? null
          : L.fromJson(json['l'] as Map<String, dynamic>),
      sq: json['sq'] == null
          ? null
          : Sq.fromJson(json['sq'] as Map<String, dynamic>),
      hr: json['hr'] == null
          ? null
          : Hr.fromJson(json['hr'] as Map<String, dynamic>),
      a: json['a'],
      cd: json['cd'] as String?,
      no: json['no'] as int?,
      rtUrl: json['rtUrl'],
      ftype: json['ftype'] as int?,
      rtUrls: json['rtUrls'] as List<dynamic>?,
      djId: json['djId'] as int?,
      copyright: json['copyright'] as int?,
      sId: json['s_id'] as int?,
      mark: json['mark'] as int?,
      originCoverType: json['originCoverType'] as int?,
      originSongSimpleData: json['originSongSimpleData'],
      tagPicList: json['tagPicList'],
      resourceState: json['resourceState'] as bool?,
      version: json['version'] as int?,
      songJumpInfo: json['songJumpInfo'],
      entertainmentTags: json['entertainmentTags'],
      awardTags: json['awardTags'],
      single: json['single'] as int?,
      noCopyrightRcmd: json['noCopyrightRcmd'],
      rtype: json['rtype'] as int?,
      rurl: json['rurl'],
      mst: json['mst'] as int?,
      cp: json['cp'] as int?,
      mv: json['mv'] as int?,
      publishTime: json['publishTime'] as int?,
      tns: (json['tns'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$TrackToJson(Track instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'pst': instance.pst,
      't': instance.t,
      'ar': instance.ar,
      'alia': instance.alia,
      'pop': instance.pop,
      'st': instance.st,
      'rt': instance.rt,
      'fee': instance.fee,
      'v': instance.v,
      'crbt': instance.crbt,
      'cf': instance.cf,
      'al': instance.al,
      'dt': instance.dt,
      'h': instance.h,
      'm': instance.m,
      'l': instance.l,
      'sq': instance.sq,
      'hr': instance.hr,
      'a': instance.a,
      'cd': instance.cd,
      'no': instance.no,
      'rtUrl': instance.rtUrl,
      'ftype': instance.ftype,
      'rtUrls': instance.rtUrls,
      'djId': instance.djId,
      'copyright': instance.copyright,
      's_id': instance.sId,
      'mark': instance.mark,
      'originCoverType': instance.originCoverType,
      'originSongSimpleData': instance.originSongSimpleData,
      'tagPicList': instance.tagPicList,
      'resourceState': instance.resourceState,
      'version': instance.version,
      'songJumpInfo': instance.songJumpInfo,
      'entertainmentTags': instance.entertainmentTags,
      'awardTags': instance.awardTags,
      'single': instance.single,
      'noCopyrightRcmd': instance.noCopyrightRcmd,
      'rtype': instance.rtype,
      'rurl': instance.rurl,
      'mst': instance.mst,
      'cp': instance.cp,
      'mv': instance.mv,
      'publishTime': instance.publishTime,
      'tns': instance.tns,
    };
