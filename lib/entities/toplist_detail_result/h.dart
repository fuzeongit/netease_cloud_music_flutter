import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'h.g.dart';

@JsonSerializable()
class H {
  final int? br;
  final int? fid;
  final int? size;
  final int? vd;

  const H({this.br, this.fid, this.size, this.vd});

  @override
  String toString() => 'H(br: $br, fid: $fid, size: $size, vd: $vd)';

  factory H.fromJson(Map<String, dynamic> json) => _$HFromJson(json);

  Map<String, dynamic> toJson() => _$HToJson(this);

  H copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
  }) {
    return H(
      br: br ?? this.br,
      fid: fid ?? this.fid,
      size: size ?? this.size,
      vd: vd ?? this.vd,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! H) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => br.hashCode ^ fid.hashCode ^ size.hashCode ^ vd.hashCode;
}
