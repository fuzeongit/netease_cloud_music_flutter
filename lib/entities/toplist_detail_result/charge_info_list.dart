import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'charge_info_list.g.dart';

@JsonSerializable()
class ChargeInfoList {
  final int? rate;
  final dynamic chargeUrl;
  final dynamic chargeMessage;
  final int? chargeType;

  const ChargeInfoList({
    this.rate,
    this.chargeUrl,
    this.chargeMessage,
    this.chargeType,
  });

  @override
  String toString() {
    return 'ChargeInfoList(rate: $rate, chargeUrl: $chargeUrl, chargeMessage: $chargeMessage, chargeType: $chargeType)';
  }

  factory ChargeInfoList.fromJson(Map<String, dynamic> json) {
    return _$ChargeInfoListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChargeInfoListToJson(this);

  ChargeInfoList copyWith({
    int? rate,
    dynamic chargeUrl,
    dynamic chargeMessage,
    int? chargeType,
  }) {
    return ChargeInfoList(
      rate: rate ?? this.rate,
      chargeUrl: chargeUrl ?? this.chargeUrl,
      chargeMessage: chargeMessage ?? this.chargeMessage,
      chargeType: chargeType ?? this.chargeType,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ChargeInfoList) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      rate.hashCode ^
      chargeUrl.hashCode ^
      chargeMessage.hashCode ^
      chargeType.hashCode;
}
