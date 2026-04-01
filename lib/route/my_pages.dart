import 'package:flutter_template/page/tab/home/home_ctrl.dart';
import 'package:flutter_template/page/tab/test/anamated_appbar/anamated_appbar.dart';
import 'package:flutter_template/page/tab/test/anamated_appbar/anamated_appbar_ctrl.dart';
import 'package:flutter_template/page/tab/video/video_ctrl.dart';
import 'package:flutter_template/page/tab/test/auto_fill/auto_fill.dart';
import 'package:flutter_template/page/tab/test/neon_button/neon_button_page.dart';
import 'package:flutter_template/page/tab/test/sava_scrollList_status/save_scrollList_status.dart';
import 'package:flutter_template/page/tab/test/test_ctrl.dart';
import 'package:flutter_template/page/tab/test/test_page.dart';
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
    GetPage(
      name: MyRoutes.test,
      page: () => const TestPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<TestCtrl>(() => TestCtrl());
      }),
    ),
    GetPage(
      name: MyRoutes.saveScrolllistStatus,
      page: () => SaveScrolllistStatus(),
    ),
    GetPage(
      name: MyRoutes.autoFill,
      page: () => const AutoFill(),
    ),
    GetPage(
      name: MyRoutes.neonButton,
      page: () => const NeonButtonPage(),
    ),
    GetPage(
      name: MyRoutes.anamatedAppBar,
      page: () => const AnamatedAppBar(),
      binding: BindingsBuilder(() {
        Get.lazyPut<AnamatedAppBarCtrl>(() => AnamatedAppBarCtrl());
      }),
    ),
  ];
}
