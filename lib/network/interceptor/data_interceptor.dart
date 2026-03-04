import 'package:dio/dio.dart';
import '../../../data/user_data.dart';

//数据拦截器
class DataInterceptors extends InterceptorsWrapper {
  // 用于防抖：记录已经处理过401的TRS账户
  static final Set<String> _processedTrsAccounts = <String>{};
  // 用于防抖：记录是否已经处理过个人账号的401
  static bool _processedUserLogout = false;
  
  /// 清除防抖标志（在登录成功后调用）
  static void clearLogoutFlags() {
    _processedTrsAccounts.clear();
    _processedUserLogout = false;
  }
  
  /// 清除指定TRS账户的防抖标志（在TRS账户退出后调用）
  static void clearTrsAccountFlag(String accountNo) {
    _processedTrsAccounts.remove(accountNo);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    final data = response.data;
    // 🔒 先判断返回类型是不是 Map（即 JSON）
    if (data is Map<String, dynamic>) {
      var code = data['code'];
      switch (code) {
        case 401:
          print("退出登录");
          break;
        default:
          break;
      }
    } else {
      print("⚠️ 非JSON响应: ${response.data}");
    }

    super.onResponse(response, handler);
  }
}
