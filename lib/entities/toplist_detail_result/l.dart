import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'l.g.dart';

@JsonSerializable()
class L {
  final int? br;
  final int? fid;
  final int? size;
  final int? vd;

  const L({this.br, this.fid, this.size, this.vd});

  @override
  String toString() => 'L(br: $br, fid: $fid, size: $size, vd: $vd)';

  factory L.fromJson(Map<String, dynamic> json) => _$LFromJson(json);

  Map<String, dynamic> toJson() => _$LToJson(this);

  L copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd,
  }) {
    return L(
      br: br ?? this.br,
      fid: fid ?? this.fid,
      size: size ?? this.size,
      vd: vd ?? this.vd,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! L) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => br.hashCode ^ fid.hashCode ^ size.hashCode ^ vd.hashCode;
}
