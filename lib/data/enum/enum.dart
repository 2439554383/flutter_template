
enum LoadState {
  loading,
  empty,
  error,
  retry,
  success,
}


/// 登录类型（每项可带展示文案；若需国际化，可把 [text] 换成 l10n key 再在页面里解析）
enum LoginType {
  password('密码登录'),
  verificationCode('验证码登录');

  const LoginType(this.text);

  /// 展示用文案
  final String text;
}
