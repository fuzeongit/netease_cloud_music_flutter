import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netease_cloud_music_flutter/apis/home_api.dart';
import 'package:netease_cloud_music_flutter/entities/toplist_result/toplist_item.dart';
import 'package:netease_cloud_music_flutter/widgets/link.widget.dart';
import 'package:netease_cloud_music_flutter/widgets/skeleton.widget.dart';

class ToplistItemWidget extends StatelessWidget {
  const ToplistItemWidget(this.toplistItem, {Key? key}) : super(key: key);

  final height = 260.0;

  final ToplistItem toplistItem;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ToplistItemWidgetVM>(
        init: ToplistItemWidgetVM(toplistItem),
        global: false,
        builder: (vm) {
          var skeleton = const AspectRatio(
              aspectRatio: 2.5,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Skeleton(),
              ));
          Widget widget = _buildSkeleton();
          return Card(
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        LinkWidget(
                          onTap: vm.toSquare,
                          child:  Text(
                            toplistItem.name!,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
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
              ),
            ),
          );
        });
  }

  Widget _buildSkeleton() {
    return Skeleton();
  }

  Widget _buildMain(List<ToplistItem> list) {
    return Skeleton();
  }
}

class ToplistItemWidgetVM extends GetxController {
  ToplistItemWidgetVM(ToplistItem toplistItem);

  final homeApi = Get.find<HomeApi>();

  void toSquare() {}
}
