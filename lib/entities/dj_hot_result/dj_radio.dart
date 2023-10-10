import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dj.dart';

part 'dj_radio.g.dart';

@JsonSerializable()
class DjRadio {
  final int? id;
  final String? name;
  final String? picUrl;
  final int? programCount;
  final int? subCount;
  final int? createTime;
  final int? categoryId;
  final String? category;
  final String? rcmdtext;
  final int? radioFeeType;
  final int? feeScope;
  final int? playCount;
  final bool? subed;
  final Dj? dj;
  final String? copywriter;
  final bool? buyed;

  const DjRadio({
    this.id,
    this.name,
    this.picUrl,
    this.programCount,
    this.subCount,
    this.createTime,
    this.categoryId,
    this.category,
    this.rcmdtext,
    this.radioFeeType,
    this.feeScope,
    this.playCount,
    this.subed,
    this.dj,
    this.copywriter,
    this.buyed,
  });

  @override
  String toString() {
    return 'DjRadio(id: $id, name: $name, picUrl: $picUrl, programCount: $programCount, subCount: $subCount, createTime: $createTime, categoryId: $categoryId, category: $category, rcmdtext: $rcmdtext, radioFeeType: $radioFeeType, feeScope: $feeScope, playCount: $playCount, subed: $subed, dj: $dj, copywriter: $copywriter, buyed: $buyed)';
  }

  factory DjRadio.fromJson(Map<String, dynamic> json) {
    return _$DjRadioFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DjRadioToJson(this);

  DjRadio copyWith({
    int? id,
    String? name,
    String? picUrl,
    int? programCount,
    int? subCount,
    int? createTime,
    int? categoryId,
    String? category,
    String? rcmdtext,
    int? radioFeeType,
    int? feeScope,
    int? playCount,
    bool? subed,
    Dj? dj,
    String? copywriter,
    bool? buyed,
  }) {
    return DjRadio(
      id: id ?? this.id,
      name: name ?? this.name,
      picUrl: picUrl ?? this.picUrl,
      programCount: programCount ?? this.programCount,
      subCount: subCount ?? this.subCount,
      createTime: createTime ?? this.createTime,
      categoryId: categoryId ?? this.categoryId,
      category: category ?? this.category,
      rcmdtext: rcmdtext ?? this.rcmdtext,
      radioFeeType: radioFeeType ?? this.radioFeeType,
      feeScope: feeScope ?? this.feeScope,
      playCount: playCount ?? this.playCount,
      subed: subed ?? this.subed,
      dj: dj ?? this.dj,
      copywriter: copywriter ?? this.copywriter,
      buyed: buyed ?? this.buyed,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! DjRadio) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      picUrl.hashCode ^
      programCount.hashCode ^
      subCount.hashCode ^
      createTime.hashCode ^
      categoryId.hashCode ^
      category.hashCode ^
      rcmdtext.hashCode ^
      radioFeeType.hashCode ^
      feeScope.hashCode ^
      playCount.hashCode ^
      subed.hashCode ^
      dj.hashCode ^
      copywriter.hashCode ^
      buyed.hashCode;
}
