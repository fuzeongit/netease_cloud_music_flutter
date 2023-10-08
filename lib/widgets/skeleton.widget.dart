import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({Key? key, this.height = 20, this.width = 200})
      : super(key: key);
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SkeletonLogic>(
      init: SkeletonLogic(),
      global: false,
      builder: (vm) => Obx(
        () => Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(vm.animationValue.value, 0),
                    end: const Alignment(-1, 0),
                    colors: Theme.of(context).brightness == Brightness.dark
                        ? [Colors.white24, Colors.black12, Colors.white24]
                        : [Colors.black12, Colors.white12, Colors.black12]))),
      ),
    );
  }
}

class SkeletonLogic extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> animation;

  final animationValue = Rx(-3.0);

  @override
  void onInit() {
    super.onInit();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 2500,
      ),
    );

    animation = Tween<double>(begin: -3, end: 11).animate(controller)
      ..addListener(() {
        animationValue.value = animation.value;
      });

    controller.repeat();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
