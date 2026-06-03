import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/base/my_color.dart';
import 'package:get/get.dart';

enum CardStatus { like, disLike, collect }

class AnimatedDraggableCardCtrl extends GetxController
    with GetSingleTickerProviderStateMixin {
  //自写动画
  // late AnimationController animationController;
  // late Animation<double> rotate;
  // late Animation<double> translateY;

  List<CardStatus> cardStatusList = CardStatus.values;
  RxList<String> cardList = [
    "assets/images/avatar.jpg",
    "assets/images/avatar1.jpg",
    "assets/images/avatar2.jpg",
  ].obs;

  Rx<double> lastCardDx = 0.00.obs;

  Rx<double> lastCardDy = 0.00.obs;

  Rx<double> angle = 0.00.obs;

  Rx<double> angleY = 0.00.obs;

  Rx<Color> dynamicColor = Colors.white.obs;

  RxBool isDragging = false.obs;

  void onSelect(CardStatus item) {}

  void onPanStart(DragStartDetails details) {
    isDragging.value = true;
  }

  void onPanUpdate(DragUpdateDetails details) {
    // setDynimicColor ();
    final dx = details.delta.dx;
    final dy = details.delta.dy;
    lastCardDx.value += dx;
    lastCardDy.value += dy;
    final t = (lastCardDx.value / 300.w).clamp(-1.0, 1.0);
    angleY.value = pi * t; // 右滑逐渐到 4π，左滑到 -4π
    angle.value = 45 * (pi / 180) * (lastCardDx.value / 1.sw / 2);
  }

  void onPanEnd(DragEndDetails details) {
    isDragging.value = false;
    if (currentStatus!=null) {
      cardList.removeLast();
      currentStatus == null ;
    }
    lastCardDx.value = 0.00;
    lastCardDy.value = 0.00;
    angle.value = 0;
    angleY.value = 0;
  }

  double delta = 100;
  bool get forceCollect => lastCardDx.value.obs() < 20;
  CardStatus? get currentStatus {
      if(lastCardDx.value> delta ){
        return CardStatus.like;
      }
            if(lastCardDx.value< -delta ){
      return CardStatus.disLike;
      }
                if(lastCardDy.value< -delta/2 && forceCollect ){
             return CardStatus.collect;
      }

  }
  Color getColor(CardStatus status) {
    if (status == CardStatus.like) {
      if(currentStatus == CardStatus.like){
        return Colors.white;
      }
      return Colors.red;
    }
    if (status == CardStatus.disLike) {
            if(currentStatus == CardStatus.disLike){
        return Colors.white;
      }
      return Colors.green;
    }
          if(currentStatus == CardStatus.collect){
        return Colors.white;
      }
    return Colors.orange;
  }

  // void setDynimicColor() {
  //   if()
  // }

  // Offset origin = Offset(150.w, 150.h);

  // AlignmentGeometry alignment = Alignment.bottomRight;
  // @override
  // void onInit() {
  //   animationController = AnimationController(vsync: this,duration: Duration(seconds: 1));
  //   animationController.addListener((){
  //       if(animationController.status ==AnimationStatus.completed){
  //         cardList.removeLast();
  //         print("${cardList}");
  //         animationController.reset();
  //       }
  //   });
  //   rotate = animationController.drive(Tween(begin: 0,end: pi/18));
  //   translateY = animationController.drive(Tween(begin: 0,end: -40));
  //   super.onInit();
  // }

  // @override
  // void onClose() {
  //   animationController.dispose();
  //   super.onClose();
  // }

  // void onSelect(CardStatus item) {
  //   if (item == CardStatus.like) {
  //     origin = Offset(150.w, 150.h);
  //     alignment = Alignment.bottomRight;
  //     rotate = animationController.drive(Tween(begin: 0,end: pi/18));
  //     translateY = animationController.drive(Tween(begin: 0,end: -40));
  //     animationController.forward();
  //     print("Selected ${item.name}");
  //     return;
  //   }
  //   if (item == CardStatus.disLike) {
  //     origin = Offset(-150.w, 150.h);
  //     alignment = Alignment.bottomLeft;
  //     rotate = animationController.drive(Tween(begin: 0,end: -pi/18));
  //     translateY = animationController.drive(Tween(begin: 0,end: -40));
  //     animationController.forward();
  //     print("Selected ${item.name}");
  //     return;
  //   }
  //     origin = Offset(150.w, 150.h);
  //     alignment = Alignment.bottomRight;
  //     rotate = animationController.drive(Tween(begin: 0,end: pi/100));
  //     translateY = animationController.drive(Tween(begin: 0,end: -240));
  //     animationController.forward();
  //   print("Selected ${item.name}");
  //   return;
  // }

  //学习动画
}
