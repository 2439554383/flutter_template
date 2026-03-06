import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeCtrl extends GetxController{
  RefreshController refreshController = RefreshController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    refreshController.dispose();
    super.onClose();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  /// 下拉刷新（静默刷新）
  void onRefresh() async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
    } catch (_) {
      // ignore
    } finally {
      refreshController.refreshCompleted();
    }
  }

  /// 上拉加载更多
  void onLoading() async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
    } catch (_) {
      // ignore
    } finally {
      refreshController.loadNoData();
    }
  }
}