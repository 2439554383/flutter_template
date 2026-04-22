import 'package:flutter/material.dart';
import 'package:flutter_template/page/tab/test/cacheCustomFolders/cacheCustomFoldersCtrl.dart';
import 'package:get/get.dart';

class Cachecustomfolders extends GetView<Cachecustomfoldersctrl> {
  const Cachecustomfolders({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: controller.onSelectFiles, child: Text("打开选择器")),
    );
  }
}