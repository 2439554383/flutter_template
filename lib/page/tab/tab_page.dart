import 'package:flutter/material.dart';
import 'package:flutter_template/page/tab/tab_ctrl.dart';
import 'package:get/state_manager.dart';

class TabPage extends GetView<TabCtrl> {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: controller.bottomBarItems,
        currentIndex: controller.currentIndex.value,
        onTap: (index){
          controller.onPageSelected(index);
        },
        ),
      body: controller.bodyList[controller.currentIndex.value],
    );
    });
  }
}