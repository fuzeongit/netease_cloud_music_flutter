import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:netease_cloud_music_flutter/apis/playlist_api.dart';
import 'package:netease_cloud_music_flutter/entities/toplist_detail_result/playlist_detail_result.dart';
import 'package:netease_cloud_music_flutter/utils/writing.dart';
import 'package:netease_cloud_music_flutter/widgets/shadow_icon.widget.dart';
import 'package:netease_cloud_music_flutter/widgets/skeleton.widget.dart';

class PlaylistVM extends GetxController {
  PlaylistVM(this.id);
  final int id;

  final playlistApi = Get.find<PlaylistApi>();

  final playlistResult = Rx<PlaylistDetailResult?>(null);

  void get() async {
    playlistResult.value = await playlistApi.detailJson(id);
  }

  @override
  void onInit() {
    super.onInit();
    get();
  }
}

class PlaylistPage extends StatelessWidget {
  const PlaylistPage(this.id, {Key? key}) : super(key: key);

  final int id;

  final coverSize = 120.0;

  @override
  Widget build(context) {
    return GetBuilder(
      init: PlaylistVM(id),
      global: false,
      builder: (vm) => Scaffold(
          backgroundColor: Colors.grey.shade100,
          body: CustomScrollView(slivers: <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: const ShadowIcon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Get.back();
                },
              ),
              elevation: 1,
              pinned: true,
              //默认高度是状态栏和导航栏的高度，如果有滚动视差的话，要大于前两者的高度
              floating: false,
              expandedHeight: Get.width,
              //只跟floating相对应，如果为true，floating必须为true，也就是向下滑动一点儿，整个大背景就会动画显示全部，网上滑动整个导航栏的内容就会消失
              flexibleSpace: FlexibleSpaceBar(
                background: Obx(() => vm.playlistResult.value != null
                    ? _buildBar(vm)
                    : _buildBarSkeleton()),
                collapseMode: CollapseMode.pin,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: Get.height - Get.width,
                  color: Colors.pink,
                )
              ]),
            ),
          ])),
    );
  }

  Widget _buildBarSkeleton() {
    return Container();
  }

  Widget _buildBar(PlaylistVM vm) {
    var playlist = vm.playlistResult.value!.playlist!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: coverSize,
                height: coverSize,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: CachedNetworkImage(
                          imageUrl: playlist.coverImgUrl!,
                          fit: BoxFit.cover,
                          progressIndicatorBuilder: (BuildContext context,
                              String url, DownloadProgress progress) {
                            return const Skeleton();
                          },
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 30,
                        right: 0,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12)),
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
                                      tenThousand(playlist.playCount!),
                                      textScaleFactor: .9,
                                      style:
                                          const TextStyle(color: Colors.white),
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
              Text(
                playlist.name!,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(fontSize: 12),
              )
            ],
          ),
          Text(playlist.description!, overflow: TextOverflow.ellipsis)
        ],
      ),
    );
  }

  Widget _buildSkeleton() {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        leading: IconButton(
          icon: const ShadowIcon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        elevation: 1,
        pinned: true,
        //默认高度是状态栏和导航栏的高度，如果有滚动视差的话，要大于前两者的高度
        floating: false,
        expandedHeight: Get.width,
        //只跟floating相对应，如果为true，floating必须为true，也就是向下滑动一点儿，整个大背景就会动画显示全部，网上滑动整个导航栏的内容就会消失
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            color: Colors.transparent,
          ),
          collapseMode: CollapseMode.pin,
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate([
          Container(
            height: Get.height - Get.width,
            color: Colors.pink,
          )
        ]),
      ),
    ]);
  }
}
