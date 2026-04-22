import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/gen/assets.gen.dart';
import 'package:flutter_template/page/tab/test/custom_mask/custom_mask_ctrl.dart';
import 'package:get/state_manager.dart';
import 'package:widget_mask/widget_mask.dart';

class CustomMaskPage extends GetView<CustomMaskCtrl> {
  const CustomMaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WidgetMask(
          blendMode: BlendMode.srcATop,
          childSaveLayer: true,
          mask: Assets.images.avatar.image(),
          child: Container(width: 100.w,height: 100.h,child: FlutterLogo()),
        ),
      ),
    );
  }
}
