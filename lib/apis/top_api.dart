import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:netease_cloud_music_flutter/configs/get.dart';
import 'package:netease_cloud_music_flutter/entities/pageable/pageable.dart';
import 'package:netease_cloud_music_flutter/entities/playlist_result/playlist_result.dart';
import 'package:netease_cloud_music_flutter/share/http/services.dart';

class TopApi extends GetxService {
  final _httpClient = Get.find<HttpClient>(tag: GetConfig.NETEASE_HTTP);

  Future<PlaylistResult> playlist(Pageable pageable) async {
    var params = pageable.toJson();
    return await _httpClient.get(
        "/top/playlist", params: params, PlaylistResult.fromJson);
  }

  Future<PlaylistResult> playlistJson(Pageable pageable) async {
    Map<String, dynamic> map =
        jsonDecode(await rootBundle.loadString("playlist_all.json"));
    return PlaylistResult.fromJson(map);
  }
}
