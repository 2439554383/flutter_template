import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/base/my_color.dart';
import 'package:flutter_template/page/tab/home/home_ctrl.dart';
import 'package:flutter_template/page/tab/test/anamated_appbar/anamated_appbar_ctrl.dart';
import 'package:flutter_template/page/tab/video/video_ctrl.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AnamatedAppBar extends GetView<AnamatedAppBarCtrl> {
  const AnamatedAppBar({super.key});

  showNewBottom() {
    Navigator.of(Get.context!).push(
      CupertinoSheetRoute(
        builder: (context) {
          return Container(
            height: 300.h,
            color: whiteColor,
            child: Column(
              children: [
                CupertinoButton(child: Text("点击"), onPressed: () {}),
                CupertinoButton(
                  child: Text("下一页"),
                  onPressed: () {
                    showNewBottom();
                  },
                ),
                CupertinoButton(
                  child: Text("返回"),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
        controller: controller.refreshController,
        enablePullDown: false,
        enablePullUp: false,
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            CupertinoSliverNavigationBar(
              largeTitle: Text("Hello"),
              backgroundColor: blackColor,
            ),
            SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: () {
                  showNewBottom();
                },
                child: Text("打开底部弹窗"),
              ),
            ),
            SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: () {
                  showCupertinoSheet(
                    context: context,
                    useNestedNavigation: true,
                    pageBuilder: (context) {
                      return Container(
                        height: 300.h,
                        color: whiteColor,
                        child: Column(
                          children: [
                            CupertinoButton(child: Text("点击"), onPressed: () {}),
                            CupertinoButton(
                              child: Text("下一页"),
                              onPressed: () {
                                showNewBottom();
                              },
                            ),
                            CupertinoButton(
                              child: Text("返回"),
                              onPressed: () {
                                Get.back();
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text("打开底部弹窗(分页)"),
              ),
            ),
            ...List.generate(30, (index) {
              return SliverToBoxAdapter(
                child: Container(
                  width: double.infinity,
                  height: 100.h,
                  alignment: Alignment.center,
                  child: Text("我是小丑"),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
