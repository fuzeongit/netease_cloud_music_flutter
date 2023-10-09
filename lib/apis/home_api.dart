import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:netease_cloud_music_flutter/configs/get.dart';
import 'package:netease_cloud_music_flutter/entities/banner_result/banner_result.dart';
import 'package:netease_cloud_music_flutter/share/http/services.dart';

class HomeApi extends GetxService {
  final _httpClient = Get.find<HttpClient>(tag: GetConfig.NETEASE_HTTP);

  Future<BannerResult> banner() async {
    return await _httpClient.get("/banner", BannerResult.fromJson);
  }

  Future<BannerResult> bannerJson() async {
    Map<String, dynamic> map =
        jsonDecode(await rootBundle.loadString("banner.json"));
    return BannerResult.fromJson(map);
  }
}
