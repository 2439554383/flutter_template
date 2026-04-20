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
    TestModel(
      title: "用isolates加载电影",
      method: () => MyRoutes.push(MyRoutes.loadWithIsolates),
    ),
        TestModel(
      title: "自定义圆形菜单",
      method: () => MyRoutes.push(MyRoutes.circularMenu),
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