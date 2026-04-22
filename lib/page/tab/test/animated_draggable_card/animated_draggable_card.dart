import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/page/tab/test/animated_draggable_card/animated_draggable_card_ctrl.dart';
import 'package:get/state_manager.dart';

class AnimatedDraggableCardPage extends GetView<AnimatedDraggableCardCtrl> {
  const AnimatedDraggableCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 10.h,
          children: [
            SizedBox(height: 15.h),
            Row(
              spacing: 5.w,
              children: [
                FlutterLogo(),
                Text("YouLady", style: TextStyle(fontSize: 22.sp)),
              ],
            ),
            buildStackCard(),
            buildButton(),
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }

  buildButton() {
    return Row(
      spacing: 15.w,
      children: List.generate(controller.cardStatusList.length, (index) {
        final item = controller.cardStatusList[index];
        return Expanded(
          child: ElevatedButton(
            onPressed: () {
              controller.onSelect(item);
            },
            child: Text("${item.name}"),
          ),
        );
      }),
    );
  }

buildStackCard() {
  return Expanded(
    // 注意：这里不再包裹 Obx，避免整个列表重建
    child: Stack(
      fit: StackFit.expand,
      children: List.generate(controller.cardList.length, (index) {
        final item = controller.cardList[index];
        bool isLast = (controller.cardList.length - 1) == index;

        if (!isLast) {
          return _buildStaticCard(item);
        }

        // 只有最后一张卡片才具有手势和响应式变换
        return GestureDetector(
          behavior: HitTestBehavior.opaque, // 确保空白处也能点击
          onPanStart: controller.onPanStart,
          onPanUpdate: controller.onPanUpdate,
          onPanEnd: controller.onPanEnd,
          child: LayoutBuilder(
            builder: (context, constraints) {

              final center = constraints.smallest.center(Offset.zero);
              // 将 Obx 放在最核心的变换层，只刷新 Matrix，不刷新整个 GestureDetector
              return Obx(() {
                final m = Matrix4.identity()
                  ..translate(center.dx, center.dy)
                  ..rotateY(controller.angleY.value)
                  // ..rotateZ(controller.angle.value)
                  ..translate(-center.dx, -center.dy)
                  // ..translate(controller.lastCardDx.value, controller.lastCardDy.value)
                  ;

                return AnimatedContainer(
                  transform: m,
                  duration: Duration(milliseconds: 100),
                  // transformAlignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(item, fit: BoxFit.cover),
                    ),
                  ),
                );
              });
            },
          ),
        );
      }),
    ),
  );
}


// 提取静态卡片减少开销
Widget _buildStaticCard(String item) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 15.w),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
      ),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(item, fit: BoxFit.cover),
    ),
  );
}
  //学习动画

  //自写动画
  // buildStackCard() {
  //   return Expanded(
  //     child: Obx(() {
  //       return Stack(
  //         fit: StackFit.expand,
  //         children: List.generate(controller.cardList.length, (index) {
  //           final item = controller.cardList[index];
  //           bool isLast = (controller.cardList.length - 1) == index;
  //           return isLast
  //               ? AnimatedBuilder(
  //                   animation: controller.animationController,
  //                   builder: (BuildContext context, Widget? child) {
  //                     return Transform.translate(
  //                       offset: Offset(0, controller.translateY.value),
  //                       child: Transform.rotate(
  //                         alignment: controller.alignment,
  //                         angle: controller.rotate.value,
  //                         origin: controller.origin,
  //                         child: Container(
  //                           margin: EdgeInsets.symmetric(horizontal: 15.w),
  //                           child: Card(
  //                             shape: RoundedRectangleBorder(
  //                               borderRadius: .all(Radius.circular(20.r)),
  //                             ),
  //                             clipBehavior: Clip.hardEdge,
  //                             child: Image.asset(item, fit: BoxFit.cover),
  //                           ),
  //                         ),
  //                       ),
  //                     );
  //                   },
  //                 )
  //               : Container(
  //                   margin: EdgeInsets.symmetric(horizontal: 15.w),
  //                   child: Card(
  //                     shape: RoundedRectangleBorder(
  //                       borderRadius: .all(Radius.circular(20.r)),
  //                     ),
  //                     clipBehavior: Clip.hardEdge,
  //                     child: Image.asset(item, fit: BoxFit.cover),
  //                   ),
  //                 );
  //         }),
  //       );
  //     }),
  //   );
  // }
}
