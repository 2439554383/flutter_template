import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

//日志拦截器
class LoggingInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('-------------------------------------------------');
    print(
      "- 请求url：${options.baseUrl}${options.path} 类型 ${options.method} -",
    );
    print('- 请求头: ${options.headers.toString()} -');

    if (options.data != null) {
      Logger().i(options.data);
    }
    print('- 请求参数queryParameters: ${options.queryParameters.toString()} -');
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // if (err.response == null) {
    //   showToast("网络异常");
    // }
    Logger().d(err.response);
    print('err ${err.error}  ${err.type}');
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
      '--- 返回的${response.requestOptions.baseUrl}${response.requestOptions.path} ----',
    );
    //if(![Api.adjustable].contains(response.requestOptions.path))
    // Logger().d(response.data);
    if (!response.requestOptions.path.contains("/api/stock/data/real-time") &&
        !response.requestOptions.path.contains(
          "https://fat-hs-api-sdk.szfiu.com/v1/chart/trend/mini",
        ) &&
        !response.requestOptions.path.contains(
          "http://113.96.190.67:18085/api/message/getAllCountryAndShortPhone",
        )) {
      Logger().d(response.data);
    }
    // Logger().d(response.data);
    super.onResponse(response, handler);
  }
}
