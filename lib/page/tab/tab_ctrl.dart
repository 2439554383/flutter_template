import 'package:flutter/material.dart';
import 'package:flutter_template/generated/l10n.dart';
import 'package:flutter_template/page/tab/home/home_page.dart';
import 'package:get/get.dart';

class TabCtrl extends GetxController{

  List<BottomNavigationBarItem> bottomBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: S.current.home),
    BottomNavigationBarItem(icon: Icon(Icons.video_call),label: S.current.video),
    BottomNavigationBarItem(icon: Icon(Icons.room_service),label: S.current.service),
    BottomNavigationBarItem(icon: Icon(Icons.person),label: S.current.person),
  ];

  List<Widget> bodyList = [HomePage(), HomePage(), HomePage(), HomePage()];
  RxInt currentIndex = 0.obs;
  @override
  void onInit() {
    // TODO: implement onInit
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

  void onPageSelected(int index) {
      currentIndex.value = index;
      update();
  }
}