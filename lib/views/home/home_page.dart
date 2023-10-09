import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:netease_cloud_music_flutter/views/home/widgets/banner_widget.dart';
import 'package:netease_cloud_music_flutter/views/home/widgets/drawer_widget.dart';
import 'package:netease_cloud_music_flutter/views/home/widgets/playlist_widget.dart';

class HomeVM extends GetxController {
  var count = 0.obs;

  var zoomDrawerController = Get.find<ZoomDrawerController>();

  increment() => count++;

  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
    update();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(context) {
    var controller = Get.put(ZoomDrawerController());
    return GetBuilder(
      init: HomeVM(),
      global: false,
      builder: (vm) => ZoomDrawer(
        controller: controller,
        menuScreen: DrawerWidget(color: Colors.grey.shade100),
        menuBackgroundColor: Colors.grey.shade100,
        mainScreen: _buildPage(vm),
        angle: 0,
        mainScreenTapClose: true,
        slideWidth: Get.mediaQuery.size.width * 0.85,
      ),
    );
  }

  Widget _buildPage(HomeVM vm) {
    return Scaffold(
        // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(
          title: Obx(() => Text("Clicks: ${vm.count}")),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: vm.toggleDrawer,
          ),
        ),
        // drawer: const DrawerWidget(),
        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: const Column(children: [
          BannerWidget(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
            child: PlaylistWidget(),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
            onPressed: vm.increment, child: const Icon(Icons.add)));

    // return Column(children: [
    //   BannerWidget(),
    //   PlaylistWidget(),
    //   ElevatedButton(
    //     onPressed: controller.toggleDrawer,
    //     child: Text("Toggle Drawer"),
    //   )
    // ]);
  }
}

class HomeDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();

  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
    update();
  }
}
