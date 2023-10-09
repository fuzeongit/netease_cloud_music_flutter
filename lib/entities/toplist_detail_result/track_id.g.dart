// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackId _$TrackIdFromJson(Map<String, dynamic> json) => TrackId(
      id: json['id'] as int?,
      v: json['v'] as int?,
      t: json['t'] as int?,
      at: json['at'] as int?,
      alg: json['alg'],
      uid: json['uid'] as int?,
      rcmdReason: json['rcmdReason'] as String?,
      sc: json['sc'],
      f: json['f'],
      sr: json['sr'],
      lr: json['lr'] as int?,
      ratio: json['ratio'] as int?,
    );

Map<String, dynamic> _$TrackIdToJson(TrackId instance) => <String, dynamic>{
      'id': instance.id,
      'v': instance.v,
      't': instance.t,
      'at': instance.at,
      'alg': instance.alg,
      'uid': instance.uid,
      'rcmdReason': instance.rcmdReason,
      'sc': instance.sc,
      'f': instance.f,
      'sr': instance.sr,
      'lr': instance.lr,
      'ratio': instance.ratio,
    };
