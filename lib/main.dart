import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:netease_cloud_music_flutter/apis/dj_api.dart';
import 'package:netease_cloud_music_flutter/apis/home_api.dart';
import 'package:netease_cloud_music_flutter/apis/playlist_api.dart';
import 'package:netease_cloud_music_flutter/apis/search_api.dart';
import 'package:netease_cloud_music_flutter/apis/top_api.dart';
import 'package:netease_cloud_music_flutter/app.dart';
import 'package:netease_cloud_music_flutter/configs/app.dart';
import 'package:netease_cloud_music_flutter/configs/get.dart';
import 'package:netease_cloud_music_flutter/share/http/services.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      //      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await GetStorage.init();
  await initServices();
  runApp(const App());
}

Future<void> initServices() async {
  print('starting services ...');
  Get.put(HttpClient(AppConfig.API_HOST, options: HttpClientOptions()),
      tag: GetConfig.NETEASE_HTTP);
  Get.put(HomeApi());
  Get.put(SearchApi());
  Get.put(TopApi());
  Get.put(PlaylistApi());
  Get.put(DjApi());

  print('All services started...');
}
