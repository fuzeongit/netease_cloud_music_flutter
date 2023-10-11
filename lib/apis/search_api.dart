import 'package:get/get.dart';
import 'package:netease_cloud_music_flutter/configs/get.dart';
import 'package:netease_cloud_music_flutter/entities/hot_result/hot_result.dart';
import 'package:netease_cloud_music_flutter/share/http/services.dart';

class SearchApi extends GetxService {
  final _httpClient = Get.find<HttpClient>(tag: GetConfig.neteaseHttp);

  Future<HotResult> hot() async {
    return await _httpClient.get("/search/hot", HotResult.fromJson);
  }
}
