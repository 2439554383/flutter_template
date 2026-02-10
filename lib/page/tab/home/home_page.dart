import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/base/my_color.dart';
import 'package:flutter_template/page/tab/home/home_ctrl.dart';
import 'package:get/state_manager.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomePage extends GetView<HomeCtrl> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: controller.refreshController,
      enablePullDown: true,
      enablePullUp: true,
      child: NestedScrollView(
        headerSliverBuilder: (context, index) {
          return [
            SliverAppBar(title: Text("Hello")),
            SliverToBoxAdapter(
              child: Container(
                height: 300.h,
                color: whiteColor,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      height: 100.h,
                      alignment: Alignment.center,
                      child: Text("我是小丑"),
                    );
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20.h,),
            )
          ];
        },
        body: Container(
          color: whiteColor,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 100.h,
                alignment: Alignment.center,
                child: Text("我是小丑"),
              );
            },
          ),
        ),
      ),
    );
  }
}
