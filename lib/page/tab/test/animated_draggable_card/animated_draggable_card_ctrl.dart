import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

enum CardStatus { like, disLike, collect }

class AnimatedDraggableCardCtrl extends GetxController with GetSingleTickerProviderStateMixin{
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

  void onSelect(CardStatus item) {

  }

  void onPanStart(DragStartDetails details) {

  }

  void onPanUpdate(DragUpdateDetails details) {
      final dx = details.delta.dx;
      final dy = details.delta.dy;
      lastCardDx.value += dx;
      lastCardDy.value += dy;
  final t = (lastCardDx.value / 300.w).clamp(-1.0, 1.0);
angleY.value =  pi * t; // 右滑逐渐到 4π，左滑到 -4π
      angle.value = 45 * (pi /180) * (lastCardDx.value/1.sw/2) ;
  }

  void onPanEnd(DragEndDetails details) {
    lastCardDx.value = 0.00;
    lastCardDy.value = 0.00;
    angle.value = 0;
    angleY.value = 0;
  }

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
