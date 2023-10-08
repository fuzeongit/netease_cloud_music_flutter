import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netease_cloud_music_flutter/apis/search_api.dart';
import 'package:netease_cloud_music_flutter/entities/hot_result/hot.dart';
import 'package:netease_cloud_music_flutter/views/home/widgets/playlist_widget.dart';

import 'views/home/widgets/banner_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Music',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomeVM extends GetxController {
  var count = 0.obs;
  increment() => count++;

  final searchApi = Get.find<SearchApi>();

  final hot = RxList<Hot>.empty();

  getHot() async {
    var hotResult = await searchApi.hot();

    hot.value = hotResult.result.hots;
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(context) {
    return GetBuilder(
      init: HomeVM(),
      global: false,
      builder: _buildPage,
    );
  }

  Widget _buildPage(HomeVM vm) {
    return Scaffold(
        // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Obx(() => Text("Clicks: ${vm.count}"))),

        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: const Column(children: [BannerWidget(), PlaylistWidget()]),
        floatingActionButton: FloatingActionButton(
            onPressed: vm.getHot, child: const Icon(Icons.add)));
  }

  Widget _buildHotsView(HomeVM vm) {
    return Obx(() => ListView(
        children: vm.hot.map((element) => Text(element.first)).toList()));
  }
}
