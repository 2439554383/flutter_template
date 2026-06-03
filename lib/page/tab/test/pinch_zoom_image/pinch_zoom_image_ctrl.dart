import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PinchZoomImageCtrl extends GetxController {
  /// 是否正在进行缩放/拖动交互（交互时需要“盖住”自定义 AppBar）
  final RxBool isInteracting = false.obs;

  /// 复用同一个 controller，结束时可重置回初始矩阵
  final TransformationController transformationController =
      TransformationController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    transformationController.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void onInteractionStart() {
    isInteracting.value = true;
  }

  void onInteractionEnd() {
    isInteracting.value = false;
    transformationController.value = Matrix4.identity();
  }

  Future<void> onRefresh() async {
  }
}

