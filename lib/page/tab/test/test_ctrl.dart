import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/model/test_model.dart';
import 'package:flutter_template/route/my_route.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:overlay_support/overlay_support.dart';

class TestCtrl extends GetxController{
  List<TestModel> itemList = [
   TestModel(
      title: "Animated AppBar",
      method: () => MyRoutes.push(MyRoutes.anamatedAppBar),
    ),
    TestModel(
      title: "保存列表滚动状态",
      method: () => MyRoutes.push(MyRoutes.saveScrolllistStatus),
    ),
    TestModel(
      title: "自动填充 Autofill",
      method: () => MyRoutes.push(MyRoutes.autoFill),
    ),
    TestModel(
      title: "霓虹按钮",
      method: () => MyRoutes.push(MyRoutes.neonButton),
    ),
    TestModel(
      title: "用isolates加载电影",
      method: () => MyRoutes.push(MyRoutes.loadWithIsolates),
    ),
        TestModel(
      title: "自定义圆形菜单",
      method: () => MyRoutes.push(MyRoutes.circularMenu),
    ),
            TestModel(
      title: "加载文件",
      method: () => MyRoutes.push(MyRoutes.cacheCustomFolders),
    ),
    TestModel(
      title: "自定义遮罩/遮蔽",
      method: () => MyRoutes.push(MyRoutes.customMask),
    ),
    TestModel(
      title: "动画拖动卡片",
      method: () => MyRoutes.push(MyRoutes.animatedDraggableCard),
    ),
    TestModel(
      title: "捏合缩放图片",
      method: () => MyRoutes.push(MyRoutes.pinchZoomImage),
    ),
    TestModel(
      title: "多功能表格",
      method: () => MyRoutes.push(MyRoutes.multiFunctionTable),
    ),
  ];
  @override
  void onInit() {

    super.onInit();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }


}