import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:netease_cloud_music_flutter/configs/get.dart';
import 'package:netease_cloud_music_flutter/entities/toplist_detail_result/toplist_detail_result.dart';
import 'package:netease_cloud_music_flutter/share/http/services.dart';

class PlaylistApi extends GetxService {
  final _httpClient = Get.find<HttpClient>(tag: GetConfig.NETEASE_HTTP);

  Future<ToplistDetailResult> detail(String id) async {
    return await _httpClient.get(
        "/playlist/detail", ToplistDetailResult.fromJson,
        params: {id: id});
  }

  Future<ToplistDetailResult> detailJson() async {
    Map<String, dynamic> map =
        jsonDecode(await rootBundle.loadString("toplist_detail_19723756.json"));
    return ToplistDetailResult.fromJson(map);
  }
}
