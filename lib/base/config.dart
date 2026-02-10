class MyConfig {
  static String dev = "devel";

  static String get appName {
    if (dev == "devel") return "Rosun FIN PC Dev";
    return "Rosun FIN PC";
  }

  static String get appPackage {
    if (dev == "devel") return "top.rosun.dev";
    return "com.rosun.fin";
  }

  static String get apiHost {
    if (dev == "devel") return "http://113.96.190.67:18085";
    return "https://cs.rosuntrade.top/fiapi";
  }

  static String get webSocket {
    if (dev == "devel")
      return "wss://uat-mdcc.szfiu.com/ws/stock/hs/ss/websocket";
    return "wss://uat-mdcc.szfiu.com/ws/stock/hs/ss/websocket";
  }

  /// 自动更新 appcast.xml 地址
  /// 开发环境使用本地测试服务器，生产环境使用正式服务器
  static String get updateFeedURL {
    if (dev == "devel") return "http://113.96.190.67:18085/update/appcast.xml";
    return "https://cs.rosuntrade.top/update/appcast.xml";
  }
}
