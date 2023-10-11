import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:netease_cloud_music_flutter/configs/get.dart';
import 'package:netease_cloud_music_flutter/entities/dj_hot_result/dj_hot_result.dart';
import 'package:netease_cloud_music_flutter/entities/pageable/pageable.dart';
import 'package:netease_cloud_music_flutter/share/http/services.dart';

class DjApi extends GetxService {
  final _httpClient = Get.find<HttpClient>(tag: GetConfig.neteaseHttp);

  Future<DjHotResult> hot(Pageable pageable) async {
    var params = pageable.toJson();
    return await _httpClient.get(
        "/dj/hot", params: params, DjHotResult.fromJson);
  }

  Future<DjHotResult> hotJson(Pageable pageable) async {
    Map<String, dynamic> map =
        jsonDecode(await rootBundle.loadString("dj_hot.json"));
    return DjHotResult.fromJson(map);
  }
}
