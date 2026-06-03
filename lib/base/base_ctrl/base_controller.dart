import 'package:flutter/material.dart';
import 'package:flutter_template/data/enum/enum.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

abstract class BaseController extends GetxController {
  /// 子类提供命名 Key（如 [HomeCtrl.homeRefreshKey]），供 SmartRefresher 使用
  Key get refreshControllerKey;

  RefreshController refreshController = RefreshController();

  final Rx<LoadState> loadState = LoadState.loading.obs;
  List<dynamic> refreshList = [];
  int total = 0;
  bool get enablePullUp => refreshList.length < total;

  Future<void> loadData();

  Future<void> onInitData() async {
    loadState.value = LoadState.loading;
    await loadData();
    refreshController.refreshCompleted();
  }

  Future<void> onRefresh() async {
    await loadData();
    refreshController.refreshCompleted();
  }

  Future<void> onRetry() async {
    print("触发重试");
    loadState.value = LoadState.retry;
    await loadData();
    refreshController.refreshCompleted();
  }

  void onLoading() {
    refreshController.loadNoData();
  }

  Future<void> onFocusGained() async {
    await loadData();
    refreshController.refreshCompleted();
  }

  Future<void> onFocusLost() async {}

  @override
  void onClose() {
    refreshController.dispose();
    super.onClose();
  }
}
