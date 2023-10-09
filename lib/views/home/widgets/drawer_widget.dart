import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class DrawerWidget extends GetView<ZoomDrawerController> {
  const DrawerWidget({Key? key, this.color =  const Color(0xFFFFFFFF)})
      : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Text("123"),
    );
  }
}
