import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:netease_cloud_music_flutter/apis/dj_api.dart';
import 'package:netease_cloud_music_flutter/apis/top_api.dart';
import 'package:netease_cloud_music_flutter/entities/dj_hot_result/dj_radio.dart';
import 'package:netease_cloud_music_flutter/entities/pageable/pageable.dart';
import 'package:netease_cloud_music_flutter/entities/playlist_result/playlist.dart';
import 'package:netease_cloud_music_flutter/utils/writing.dart';
import 'package:netease_cloud_music_flutter/widgets/link.widget.dart';
import 'package:netease_cloud_music_flutter/widgets/skeleton.widget.dart';

class DjHotWidget extends StatelessWidget {
  const DjHotWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DjHotWidgetVM>(
        init: DjHotWidgetVM(),
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
                    '推荐歌单',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              FutureBuilder(
                  future: vm.djApi.hotJson(vm.pageable.value),
                  builder: (BuildContext context, snapshot) {
                    if (snapshot.hasData) {
                      final result = snapshot.data!;
                      if (result.code == HttpStatus.ok) {
                        widget = _buildMain(result.djRadios!);
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
      height: 320,
      child: GridView.count(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 2,
          childAspectRatio: 1.4,
          children: List.generate(
              12,
              (index) => ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                            aspectRatio: 1,
                            child: Card(
                              surfaceTintColor: Colors.white,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Skeleton(),
                            )),
                        Spacer(flex: 8),
                        SizedBox(height: 12, child: Skeleton()),
                        Spacer(flex: 2),
                        SizedBox(height: 12, width: 80, child: Skeleton())
                      ])))),
    );
  }

  Widget _buildMain(List<DjRadio> list) {
    return SizedBox(
      width: double.infinity,
      height: 320,
      child: GridView.count(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 2,
          childAspectRatio: 1.4,
          children: list.map((item) => _buildItem(item)).toList()),
    );
  }

  Widget _buildItem(DjRadio item) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              children: [
                Positioned.fill(
                  child: CachedNetworkImage(
                    imageUrl: item.picUrl!,
                    fit: BoxFit.cover,
                    progressIndicatorBuilder: (BuildContext context, String url,
                        DownloadProgress progress) {
                      return const Skeleton();
                    },
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 30,
                  right: 0,
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(12)),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 8),
                      decoration: const BoxDecoration(
                        color: Colors.black38,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Iconify(Ion.play,
                                size: 12, color: Colors.white),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text(
                                tenThousand(item.subCount!),
                                textScaleFactor: .9,
                                style: const TextStyle(color: Colors.white),
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Spacer(flex: 8),
        Text(
          item.name!,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
  }
}

class DjHotWidgetVM extends GetxController {
  final djApi = Get.find<DjApi>();

  final pageable = Rx(const Pageable(limit: 12));

  void toSquare() {}
}
