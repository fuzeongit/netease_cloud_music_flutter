import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netease_cloud_music_flutter/apis/playlist_api.dart';
import 'package:netease_cloud_music_flutter/entities/toplist_detail_result/playlist.dart';
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
                    child: ListTile(
                        title: LinkWidget(
                            onTap: vm.toSquare,
                            child: Text(
                              toplistItem.name!,
                              overflow: TextOverflow.ellipsis,
                            )),
                        subtitle: Text(
                          toplistItem.description!,
                          overflow: TextOverflow.ellipsis,
                          style:const TextStyle(fontSize: 12)
                        )),
                  ),
                  FutureBuilder(
                      future: vm.playlistApi.detailJson(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasData) {
                          final result = snapshot.data!;

                          if (result.code == HttpStatus.ok) {
                            widget = _buildMain(result.playlist!);
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

  Widget _buildMain(Playlist playlist) {
    var imageSize = 60.0;
    var children = playlist.tracks!
        .take(3)
        .map((e) => SizedBox(
              height: imageSize,
              child: Row(
                children: [
                  SizedBox(
                    width: imageSize,
                    height: imageSize,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: e.al!.picUrl!,
                        fit: BoxFit.cover,
                        progressIndicatorBuilder: (BuildContext context,
                            String url, DownloadProgress progress) {
                          return const Skeleton();
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 6.0, horizontal: 12.0),
                    child: Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            e.name!,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 16),
                          ),
                          Text(
                            e.ar!.map((e) => e.name!).toList().join("/"),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey.shade500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ))
        .toList();
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}

class ToplistItemWidgetVM extends GetxController {
  ToplistItemWidgetVM(ToplistItem toplistItem);

  final playlistApi = Get.find<PlaylistApi>();

  void toSquare() {}
}
