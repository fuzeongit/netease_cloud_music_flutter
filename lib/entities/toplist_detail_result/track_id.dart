import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'track_id.g.dart';

@JsonSerializable()
class TrackId {
  final int? id;
  final int? v;
  final int? t;
  final int? at;
  final dynamic alg;
  final int? uid;
  final String? rcmdReason;
  final dynamic sc;
  final dynamic f;
  final dynamic sr;
  final int? lr;
  final int? ratio;

  const TrackId({
    this.id,
    this.v,
    this.t,
    this.at,
    this.alg,
    this.uid,
    this.rcmdReason,
    this.sc,
    this.f,
    this.sr,
    this.lr,
    this.ratio,
  });

  @override
  String toString() {
    return 'TrackId(id: $id, v: $v, t: $t, at: $at, alg: $alg, uid: $uid, rcmdReason: $rcmdReason, sc: $sc, f: $f, sr: $sr, lr: $lr, ratio: $ratio)';
  }

  factory TrackId.fromJson(Map<String, dynamic> json) {
    return _$TrackIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TrackIdToJson(this);

  TrackId copyWith({
    int? id,
    int? v,
    int? t,
    int? at,
    dynamic alg,
    int? uid,
    String? rcmdReason,
    dynamic sc,
    dynamic f,
    dynamic sr,
    int? lr,
    int? ratio,
  }) {
    return TrackId(
      id: id ?? this.id,
      v: v ?? this.v,
      t: t ?? this.t,
      at: at ?? this.at,
      alg: alg ?? this.alg,
      uid: uid ?? this.uid,
      rcmdReason: rcmdReason ?? this.rcmdReason,
      sc: sc ?? this.sc,
      f: f ?? this.f,
      sr: sr ?? this.sr,
      lr: lr ?? this.lr,
      ratio: ratio ?? this.ratio,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! TrackId) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      v.hashCode ^
      t.hashCode ^
      at.hashCode ^
      alg.hashCode ^
      uid.hashCode ^
      rcmdReason.hashCode ^
      sc.hashCode ^
      f.hashCode ^
      sr.hashCode ^
      lr.hashCode ^
      ratio.hashCode;
}
