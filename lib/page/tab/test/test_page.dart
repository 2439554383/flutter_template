import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/base/my_color.dart';
import 'package:flutter_template/base/my_text.dart';
import 'package:flutter_template/page/tab/test/test_ctrl.dart';
import 'package:get/state_manager.dart';

class TestPage extends GetView<TestCtrl> {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TestCtrl>(
      builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(height: 3.h);
            },
            itemCount: controller.itemList.length,
            itemBuilder: (context, index) {
              final item = controller.itemList[index];
              return TextButton(
                onPressed:item.method, 
                child: Text(item.title,style: MyText.w4_12.copyWith(color: mainColor),)
                );
            },
          ),
        );
      },
    );
  }
}
