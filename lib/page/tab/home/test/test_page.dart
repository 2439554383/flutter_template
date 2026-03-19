import 'package:flutter/material.dart';
import 'package:flutter_template/page/tab/home/test/test_ctrl.dart';
import 'package:get/state_manager.dart';

class TestPage extends GetView<TestCtrl> {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TestCtrl>(
      builder: (context) {
        return ListView.builder(
          itemCount: controller.itemList.length,
          itemBuilder: (context, index) {
            final item = controller.itemList[index];
            return TextButton(
              onPressed:item.method, 
              child: Text(item.title )
              );
          },
        );
      },
    );
  }
}
