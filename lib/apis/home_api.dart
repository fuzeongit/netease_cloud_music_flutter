import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:netease_cloud_music_flutter/configs/get.dart';
import 'package:netease_cloud_music_flutter/entities/banner_result/banner_result.dart';
import 'package:netease_cloud_music_flutter/entities/toplist_result/toplist_result.dart';
import 'package:netease_cloud_music_flutter/share/http/services.dart';

class HomeApi extends GetxService {
  final _httpClient = Get.find<HttpClient>(tag: GetConfig.neteaseHttp);

  Future<BannerResult> banner() async {
    return await _httpClient.get("/banner", BannerResult.fromJson);
  }

  Future<BannerResult> bannerJson() async {
    Map<String, dynamic> map =
        jsonDecode(await rootBundle.loadString("banner.json"));
    return BannerResult.fromJson(map);
  }

  Future<ToplistResult> toplist() async {
    return await _httpClient.get("/toplist", ToplistResult.fromJson);
  }

  Future<ToplistResult> toplistJson() async {
    Map<String, dynamic> map =
        jsonDecode(await rootBundle.loadString("toplist.json"));
    return ToplistResult.fromJson(map);
  }
}
