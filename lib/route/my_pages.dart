import 'package:flutter_template/page/tab/home/home_ctrl.dart';
import 'package:flutter_template/page/tab/video/video_ctrl.dart';
import 'package:flutter_template/page/tab/video/video_page.dart';
import 'package:get/get.dart';
import 'package:flutter_template/page/tab/tab_page.dart';
import 'package:flutter_template/page/tab/tab_ctrl.dart';
import 'package:flutter_template/route/my_route.dart';

class MyPages {
  static final pages = [
    GetPage(
      name: MyRoutes.tab,
      page: () => const TabPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<TabCtrl>(() => TabCtrl());
        Get.lazyPut<HomeCtrl>(() => HomeCtrl());
        Get.lazyPut<VideoCtrl>(() => VideoCtrl());
      }),
    ),
  ];
}
