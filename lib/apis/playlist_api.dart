import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:netease_cloud_music_flutter/configs/get.dart';
import 'package:netease_cloud_music_flutter/entities/toplist_detail_result/playlist_detail_result.dart';
import 'package:netease_cloud_music_flutter/share/http/services.dart';

class PlaylistApi extends GetxService {
  final _httpClient = Get.find<HttpClient>(tag: GetConfig.NETEASE_HTTP);

  Future<PlaylistDetailResult> detail(int id) async {
    return await _httpClient.get(
        "/playlist/detail", PlaylistDetailResult.fromJson,
        params: {"id": id});
  }

  Future<PlaylistDetailResult> detailJson(int id) async {
    Map<String, dynamic> map = jsonDecode(
        await rootBundle.loadString("playlist_detail_447328350.json"));
    return PlaylistDetailResult.fromJson(map);
  }
}
