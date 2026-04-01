import 'package:flutter_template/model/test_model.dart';
import 'package:flutter_template/route/my_route.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TestCtrl extends GetxController{
  List<TestModel> itemList = [
   TestModel(
      title: "Animated AppBar",
      method: () => MyRoutes.push(MyRoutes.anamatedAppBar),
    ),
    TestModel(
      title: "保存列表滚动状态",
      method: () => MyRoutes.push(MyRoutes.saveScrolllistStatus),
    ),
    TestModel(
      title: "自动填充 Autofill",
      method: () => MyRoutes.push(MyRoutes.autoFill),
    ),
    TestModel(
      title: "霓虹按钮",
      method: () => MyRoutes.push(MyRoutes.neonButton),
    ),
  ];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
}