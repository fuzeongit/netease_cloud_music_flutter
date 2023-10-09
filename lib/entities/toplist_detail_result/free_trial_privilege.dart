import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'free_trial_privilege.g.dart';

@JsonSerializable()
class FreeTrialPrivilege {
  final bool? resConsumable;
  final bool? userConsumable;
  final dynamic listenType;
  final dynamic cannotListenReason;

  const FreeTrialPrivilege({
    this.resConsumable,
    this.userConsumable,
    this.listenType,
    this.cannotListenReason,
  });

  @override
  String toString() {
    return 'FreeTrialPrivilege(resConsumable: $resConsumable, userConsumable: $userConsumable, listenType: $listenType, cannotListenReason: $cannotListenReason)';
  }

  factory FreeTrialPrivilege.fromJson(Map<String, dynamic> json) {
    return _$FreeTrialPrivilegeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FreeTrialPrivilegeToJson(this);

  FreeTrialPrivilege copyWith({
    bool? resConsumable,
    bool? userConsumable,
    dynamic listenType,
    dynamic cannotListenReason,
  }) {
    return FreeTrialPrivilege(
      resConsumable: resConsumable ?? this.resConsumable,
      userConsumable: userConsumable ?? this.userConsumable,
      listenType: listenType ?? this.listenType,
      cannotListenReason: cannotListenReason ?? this.cannotListenReason,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! FreeTrialPrivilege) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      resConsumable.hashCode ^
      userConsumable.hashCode ^
      listenType.hashCode ^
      cannotListenReason.hashCode;
}
