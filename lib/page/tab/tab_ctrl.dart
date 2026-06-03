import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/generated/l10n.dart';
import 'package:flutter_template/page/tab/home/home_page.dart';
import 'package:flutter_template/page/tab/video/video_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:overlay_support/overlay_support.dart';

class TabCtrl extends GetxController {
  List<BottomNavigationBarItem> bottomBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: S.current.home),
    BottomNavigationBarItem(
      icon: Icon(Icons.video_call),
      label: S.current.video,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.room_service),
      label: S.current.service,
    ),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: S.current.person),
  ];

  List<Widget> bodyList = [HomePage(), VideoPage(), HomePage(), HomePage()];
  RxInt currentIndex = 0.obs;
  @override
  void onInit() {
    checkNetwork();
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

  checkNetwork() async {
    final netWorkListenner = InternetConnection().onStatusChange.listen((
      status,
    ) {
      if (status == InternetStatus.disconnected) {
        showSimpleNotification(
          Row(
            spacing: 5.w,
           children: [
            SizedBox(width: 15.w,),
            FaIcon(FontAwesomeIcons.linkSlash),
            Text("当前无网络连接", style: TextStyle(color: Colors.red)),
           ],
          ),
          background: Colors.white,
          contentPadding:EdgeInsets.zero
        );
      } 
    });
  }
}
