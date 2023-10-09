import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'm.g.dart';

@JsonSerializable()
class M {
  final int? br;
  final int? fid;
  final int? size;
  final int? vd;

  const M({this.br, this.fid, this.size, this.vd});

  @override
  String toString() => 'M(br: $br, fid: $fid, size: $size, vd: $vd)';

  factory M.fromJson(Map<String, dynamic> json) => _$MFromJson(json);

  Map<String, dynamic> toJson() => _$MToJson(this);

  M copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
  }) {
    return M(
      br: br ?? this.br,
      fid: fid ?? this.fid,
      size: size ?? this.size,
      vd: vd ?? this.vd,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! M) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => br.hashCode ^ fid.hashCode ^ size.hashCode ^ vd.hashCode;
}
