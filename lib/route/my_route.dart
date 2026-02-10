import 'package:flutter/scheduler.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

abstract class MyRoutes {
  static const tab = '/tab';

  static push(
    String name, {
    arguments,
    Function(dynamic)? result,
    bool? preventDuplicates,
  }) {
    Get.toNamed(
      name,
      arguments: arguments,
      preventDuplicates: preventDuplicates != null ? preventDuplicates : true,
    )?.then((value) {
      result?.call(value);
    });
  }

  static offAndToNamed(String name, {arguments, Function? result}) {
    Get.offAndToNamed(name, arguments: arguments)?.then((value) {
      result?.call(value);
    });
  }

  static offAll(String name, {arguments}) {
    // 尝试导航，如果失败说明 GetMaterialApp 还未初始化，延迟执行
    try {
      Get.offNamedUntil(name, (route) => false, arguments: arguments);
    } catch (e) {
      // GetMaterialApp 还未初始化，延迟到下一帧执行
      SchedulerBinding.instance.addPostFrameCallback((_) {
        try {
          Get.offNamedUntil(name, (route) => false, arguments: arguments);
        } catch (e2) {
          // 如果还是失败，再延迟一次（可能 GetMaterialApp 还在初始化中）
          Future.delayed(const Duration(milliseconds: 100), () {
            try {
              Get.offNamedUntil(name, (route) => false, arguments: arguments);
            } catch (e3) {
              print("导航失败，GetMaterialApp 可能还未初始化: $e3");
            }
          });
        }
      });
    }
  }

  static toTab(
    int index, {
    int? childIndex,
    Map<String, dynamic>? additionalArgs,
  }) {
    // 跳转到 Tab 页面，并带上 index 参数
    Map<String, dynamic> args = {"index": index};
    if (childIndex != null) {
      args["childIndex"] = childIndex;
    }
    if (additionalArgs != null) {
      args.addAll(additionalArgs);
    }
    Get.offNamedUntil(MyRoutes.tab, (route) => false, arguments: args);
  }
}
