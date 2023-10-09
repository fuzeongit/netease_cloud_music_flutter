import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'artist_toplist.dart';
import 'toplist_item.dart';

part 'toplist_result.g.dart';

@JsonSerializable()
class ToplistResult {
  final int code;
  final List<ToplistItem>? list;
  final ArtistToplist? artistToplist;

  const ToplistResult({required this.code, this.list, this.artistToplist});

  @override
  String toString() {
    return 'ToplistResult(code: $code, list: $list, artistToplist: $artistToplist)';
  }

  factory ToplistResult.fromJson(Map<String, dynamic> json) {
    return _$ToplistResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ToplistResultToJson(this);

  ToplistResult copyWith({
    int? code,
    List<ToplistItem>? list,
    ArtistToplist? artistToplist,
  }) {
    return ToplistResult(
      code: code ?? this.code,
      list: list ?? this.list,
      artistToplist: artistToplist ?? this.artistToplist,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ToplistResult) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => code.hashCode ^ list.hashCode ^ artistToplist.hashCode;
}
