import 'package:flutter_template/base/config.dart';

class Api{
  static String get host => MyConfig.apiHost;


  static const String getHotStockList = "/api/stock/info/hot/list"; //获取热门股票列表
}