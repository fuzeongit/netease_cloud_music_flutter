import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sq.g.dart';

@JsonSerializable()
class Sq {
  final int? br;
  final int? fid;
  final int? size;
  final int? vd;

  const Sq({this.br, this.fid, this.size, this.vd});

  @override
  String toString() => 'Sq(br: $br, fid: $fid, size: $size, vd: $vd)';

  factory Sq.fromJson(Map<String, dynamic> json) => _$SqFromJson(json);

  Map<String, dynamic> toJson() => _$SqToJson(this);

  Sq copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
  }) {
    return Sq(
      br: br ?? this.br,
      fid: fid ?? this.fid,
      size: size ?? this.size,
      vd: vd ?? this.vd,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Sq) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => br.hashCode ^ fid.hashCode ^ size.hashCode ^ vd.hashCode;
}
