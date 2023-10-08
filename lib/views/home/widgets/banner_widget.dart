import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netease_cloud_music_flutter/apis/banner_api.dart';
import 'package:netease_cloud_music_flutter/entities/banner_result/banner.dart'
    as result;
import 'package:netease_cloud_music_flutter/entities/banner_result/banner_result.dart';
import 'package:netease_cloud_music_flutter/widgets/skeleton.widget.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BannerWidgetVM>(
        init: BannerWidgetVM(),
        global: false,
        builder: (vm) {
          var skeleton = const AspectRatio(
              aspectRatio: 2.5,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Skeleton(),
              ));
          Widget widget = _buildSkeleton();
          return FutureBuilder(
              future: vm.bannerApi.getJson(),
              builder:
                  (BuildContext context, AsyncSnapshot<BannerResult> snapshot) {
                if (snapshot.hasData) {
                  final result = snapshot.data!;

                  if (result.code == HttpStatus.ok) {
                    widget = _buildMain(result.banners);
                  } else {
                    widget = skeleton;
                  }
                }
                return widget;
              });
        });
  }

  Widget _buildSkeleton() {
    return AspectRatio(
        aspectRatio: 2.5,
        child: Swiper(
          itemBuilder: (context, index) {
            return const Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Skeleton(),
            );
          },
          itemCount: 3,
          scale: 0.9,
          viewportFraction: 0.8,
        ));
  }

  Widget _buildMain(List<result.Banner> banners) {
    return AspectRatio(
        aspectRatio: 2.5,
        child: Swiper(
          itemBuilder: (context, index) {
            return Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: CachedNetworkImage(
                imageUrl: banners[index].imageUrl!,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (BuildContext context, String url,
                    DownloadProgress progress) {
                  return const Skeleton();
                },
              ),
            );
          },
          itemCount: banners.length,
          scale: 0.9,
          viewportFraction: 0.8,
        ));
  }
}

class BannerWidgetVM extends GetxController {
  final bannerApi = Get.find<BannerApi>();
}
