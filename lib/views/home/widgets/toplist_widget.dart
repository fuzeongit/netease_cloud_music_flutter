import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netease_cloud_music_flutter/apis/home_api.dart';
import 'package:netease_cloud_music_flutter/entities/toplist_result/toplist_item.dart';
import 'package:netease_cloud_music_flutter/views/home/widgets/toplist_item_widget.dart';
import 'package:netease_cloud_music_flutter/widgets/link.widget.dart';
import 'package:netease_cloud_music_flutter/widgets/skeleton.widget.dart';

class ToplistWidget extends StatelessWidget {
  const ToplistWidget({Key? key}) : super(key: key);

  final height = 260.0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ToplistWidgetVM>(
        init: ToplistWidgetVM(),
        global: false,
        builder: (vm) {
          var skeleton = const AspectRatio(
              aspectRatio: 2.5,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Skeleton(),
              ));
          Widget widget = _buildSkeleton();
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: LinkWidget(
                  onTap: vm.toSquare,
                  child: const Text(
                    '排行榜',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              FutureBuilder(
                  future: vm.homeApi.toplistJson(),
                  builder: (BuildContext context, snapshot) {
                    if (snapshot.hasData) {
                      final result = snapshot.data!;

                      if (result.code == HttpStatus.ok) {
                        widget = _buildMain(result.list!);
                      } else {
                        widget = skeleton;
                      }
                    }
                    return widget;
                  }),
            ],
          );
        });
  }

  Widget _buildSkeleton() {
    return SizedBox(
        width: double.infinity,
        height: height,
        child: GridView.count(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            crossAxisCount: 1,
            childAspectRatio: height / (Get.mediaQuery.size.width * 0.9),
            children: List.generate(
              3,
              (index) => const Card(
                color: Colors.white,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Skeleton(),
              ),
            )));
  }

  Widget _buildMain(List<ToplistItem> list) {
    return SizedBox(
        width: double.infinity,
        height: height,
        child: GridView.count(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            crossAxisCount: 1,
            childAspectRatio: height / (Get.mediaQuery.size.width * 0.9),
            children: List.generate(
              list.length,
              (index) => ToplistItemWidget(list[index]),
            )));
  }
}

class ToplistWidgetVM extends GetxController {
  final homeApi = Get.find<HomeApi>();

  void toSquare() {}
}
