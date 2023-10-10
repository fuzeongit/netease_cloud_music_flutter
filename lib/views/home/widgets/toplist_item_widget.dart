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

  final imageSize = 60.0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ToplistItemWidgetVM>(
        init: ToplistItemWidgetVM(toplistItem),
        global: false,
        builder: (vm) {
          var skeleton = _buildSkeleton();
          var widget = skeleton;
          return Card(
            surfaceTintColor: Colors.white,
            elevation: 1,
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
                        subtitle: Text(toplistItem.description!,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 12))),
                  ),
                  FutureBuilder(
                      future: vm.playlistApi.detailJson(toplistItem.id!),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.hasData) {
                          final result = snapshot.data!;

                          if (result.code == HttpStatus.ok) {
                            widget = _buildMain(result.playlist!);
                          } else {
                            widget = skeleton;
                          }
                        }
                        return Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: widget,
                          ),
                        );
                      }),
                ],
              ),
            ),
          );
        });
  }

  List<Widget> _buildSkeleton() {
    return List.generate(
        3,
        (index) => SizedBox(
            height: imageSize,
            child: Row(children: [
              SizedBox(
                  width: imageSize,
                  height: imageSize,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: const Skeleton())),
              const Expanded(
                flex: 1,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 16,
                          width: double.infinity,
                          child: Skeleton()),
                      SizedBox(
                        height: 12,
                        child: FractionallySizedBox(
                          widthFactor: 0.5,
                          child: Skeleton(),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ])));
  }

  List<Widget> _buildMain(Playlist playlist) {
    return playlist.tracks!
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
  }
}

class ToplistItemWidgetVM extends GetxController {
  ToplistItemWidgetVM(ToplistItem toplistItem);

  final playlistApi = Get.find<PlaylistApi>();

  void toSquare() {}
}
