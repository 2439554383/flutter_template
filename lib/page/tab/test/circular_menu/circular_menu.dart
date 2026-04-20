import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularMenu extends StatefulWidget {
  const CircularMenu({super.key});

  @override
  State<CircularMenu> createState() => _CircularMenuState();
}

class _CircularMenuState extends State<CircularMenu>
    with SingleTickerProviderStateMixin {
  List<IconData> iconList = [
    Icons.home,
    Icons.gamepad,
    Icons.video_call,
    Icons.percent,
        Icons.video_call,
    Icons.percent,
        Icons.video_call,
    Icons.percent,
    Icons.menu,
  ];

  late AnimationController animationController;
  double buttonSize = 35;
  @override
  void initState() {
    // TODO: implement initState
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("圆形菜单")),
      body: Column(
        mainAxisSize: .min,
        children: [
          Flow(
            children: iconList
                .map<Widget>(
                  (e) => Container(
                    width: 100.w,
                    height: 100.h,
                    child: FloatingActionButton(
                      shape: CircleBorder(),
                      onPressed: () {
                        onMenuTap(index: iconList.indexOf(e));
                      },
                      child: Icon(e, size: buttonSize.sp, color: Colors.red),
                    ),
                  ),
                )
                .toList(),
            delegate: MyFlowDelegate(controller: animationController),
          ),
          Expanded(
            child: Stack(
              children: List.generate(iconList.length, (index){
                                  return Positioned(
                  bottom: (buttonSize+20)*index,
                  right: getRight(index),
                  child: FloatingActionButton(
                    shape: CircleBorder(),
                    onPressed: () {},
                    child: Icon(Icons.home, size: buttonSize.sp, color: Colors.red),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  
  void onMenuTap({required int index}) {
    print("检查到点击");
    if (animationController.status == AnimationStatus.completed) {
      animationController.reverse();
    } else {
      animationController.forward();
    }
  }
  
  double? getRight(int index) {
    if(index%2==0){
      return 0.0;
    }
    return (buttonSize+10);
  }
}

class MyFlowDelegate extends FlowDelegate {
  final Animation<double> controller;

  MyFlowDelegate({required this.controller}) : super(repaint: controller);

  @override
  void paintChildren(FlowPaintingContext context) {
    final r = 150 * controller.value;
    final int count = context.childCount;
    final size = context.getChildSize(0);
    if (count == 0) return;

    double angle(int n) => pi / 2 / (count - 2) * n;

    for (int i = 0; i < count; i++) {
      bool isLastItem = i == count - 1;
      final x = isLastItem ? 0.0 : r * cos(angle(i));
      final y = isLastItem ? 0.0 : r * sin(angle(i));
      context.paintChild(
        i,
        transform: Matrix4.identity()
          // 先移动到目标位置（r 已经乘了 controller.value，所以收回就是回到 (0,0)）
          ..translate(x, y, 0.0)
          // 把变换原点移到按钮中心点
          ..translate(size!.width / 2, size.height / 2)
          // 收回时旋转更多，展开时回到 0（最常见的“旋转收回/展开”写法）
          ..rotateZ(pi * (1 - controller.value))
          // 可选：收回时略缩小，展开时恢复
          // 移回左上角坐标系
          ..translate(-size.width / 2, -size.height / 2),
      );
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
