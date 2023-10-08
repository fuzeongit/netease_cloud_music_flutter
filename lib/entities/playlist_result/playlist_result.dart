import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'playlist.dart';

part 'playlist_result.g.dart';

@JsonSerializable()
class PlaylistResult {
  final List<Playlist>? playlists;
  final int? total;
  final int? code;
  final bool? more;
  final String? cat;

  const PlaylistResult({
    this.playlists,
    this.total,
    this.code,
    this.more,
    this.cat,
  });

  @override
  String toString() {
    return 'PlaylistResult(playlists: $playlists, total: $total, code: $code, more: $more, cat: $cat)';
  }

  factory PlaylistResult.fromJson(Map<String, dynamic> json) {
    return _$PlaylistResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlaylistResultToJson(this);

  PlaylistResult copyWith({
    List<Playlist>? playlists,
    int? total,
    int? code,
    bool? more,
    String? cat,
  }) {
    return PlaylistResult(
      playlists: playlists ?? this.playlists,
      total: total ?? this.total,
      code: code ?? this.code,
      more: more ?? this.more,
      cat: cat ?? this.cat,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PlaylistResult) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      playlists.hashCode ^
      total.hashCode ^
      code.hashCode ^
      more.hashCode ^
      cat.hashCode;
}
