import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/base/base_ctrl/base_controller.dart';
import 'package:flutter_template/base/my_color.dart';
import 'package:flutter_template/base/my_text.dart';
import 'package:flutter_template/data/enum/enum.dart';
import 'package:flutter_template/generated/l10n.dart';
import 'package:flutter_template/widget/genenal_button.dart';
import 'package:flutter_template/widget/no_data_widget.dart';
import 'package:focus_detector_v2/focus_detector_v2.dart';
import 'package:get/state_manager.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:skeletonizer/skeletonizer.dart';

/// 居中加载指示器（重试、刷新等场景，非骨架屏）
class PageStateLoading extends StatelessWidget {
  const PageStateLoading({super.key, this.minHeight, this.color});

  final double? minHeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final indicator = CircularProgressIndicator(color: color ?? MyColor.main);
    if (minHeight != null) {
      return SizedBox(
        width: double.infinity,
        height: minHeight,
        child: Center(child: indicator),
      );
    }
    return Center(child: indicator);
  }
}

/// 加载失败：居中缺省图 + 文案 + 重试按钮
class PageStateError extends StatelessWidget {
  const PageStateError({
    super.key,
    this.onRetry,
    this.title,
    this.image,
    this.minHeight,
    this.isWhite = false,
    this.onlyText = false,
  });

  final VoidCallback? onRetry;
  final String? title;
  final Widget? image;
  final double? minHeight;
  final bool isWhite;
  final bool onlyText;
  @override
  Widget build(BuildContext context) {
    final content = onlyText
        ? Text(
            title ?? S.current.loadFailed,
            style: MyText.w4_14.copyWith(
              color: isWhite ? MyColor.white : MyColor.black,
            ),
            textAlign: TextAlign.center,
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              image ?? _pageStatePlaceholderIcon(Icons.error_outline),
              SizedBox(height: 8.h),
              Text(
                title ?? S.current.loadFailed,
                style: MyText.w4_14.copyWith(
                  color: isWhite ? MyColor.white : MyColor.black,
                ),
                textAlign: TextAlign.center,
              ),
              if (onRetry != null) ...[
                SizedBox(height: 16.h),
                GenenalButton(
                  text: S.current.retry,
                  onTap: onRetry,
                  width: 120.w,
                  height: 36.h,
                  radius: 18.r,
                  backgroundColor: isWhite
                      ? MyColor.white
                      : Colors.transparent,
                  gradient: LinearGradient(
                    colors: [MyColor.main, MyColor.white],
                  ),
                  textStyle: MyText.w5_14.copyWith(color: MyColor.white),
                ),
              ],
            ],
          );

    if (minHeight != null) {
      return SizedBox(
        width: double.infinity,
        height: minHeight,
        child: Center(child: content),
      );
    }
    return Center(child: content);
  }
}

/// 暂无数据
class PageStateEmpty extends StatelessWidget {
  const PageStateEmpty({super.key, this.title, this.image, this.minHeight});

  final String? title;
  final Widget? image;
  final double? minHeight;

  @override
  Widget build(BuildContext context) {
    final content = NoDataWidget(
      image: image ?? _pageStatePlaceholderIcon(Icons.inbox_outlined),
      title: title ?? S.current.noData,
    );

    if (minHeight != null) {
      return SizedBox(
        width: double.infinity,
        height: minHeight,
        child: Center(child: content),
      );
    }
    return Center(child: content);
  }
}

/// 按 [state] 切换：骨架 / 重试 Loading / 错误 / 空 / [child]
///
/// - 整页模式：传入 [controller]，读取 [BaseController.loadState]
/// - Tab 模式：传入 [loadStateRx]，[embedInScrollView] 为 true 时空/错态可横滑切 Tab
class PageStateSwitcher extends StatelessWidget {
  const PageStateSwitcher({
    super.key,
    this.controller,
    this.loadStateRx,
    required this.child,
    this.onRetry,
    this.skeletonChild,
    this.minHeight,
    this.embedInScrollView = false,
  }) : assert(
          (controller != null) ^ (loadStateRx != null),
          'PageStateSwitcher: 请传入 controller（整页）或 loadStateRx（Tab）之一',
        );

  /// 整页模式
  PageStateSwitcher.page({
    Key? key,
    required BaseController controller,
    required Widget child,
    double? minHeight,
  }) : this(
          key: key,
          controller: controller,
          child: child,
          minHeight: minHeight,
        );

  /// Tab 模式：每个 Tab 独立状态，空/错态默认可滚动以不影响 PageView 横滑
  PageStateSwitcher.tab({
    Key? key,
    required Rx<LoadState> loadStateRx,
    required Widget child,
    VoidCallback? onRetry,
    Widget? skeletonChild,
    double? minHeight,
    bool embedInScrollView = true,
  }) : this(
          key: key,
          loadStateRx: loadStateRx,
          child: child,
          onRetry: onRetry,
          skeletonChild: skeletonChild,
          minHeight: minHeight,
          embedInScrollView: embedInScrollView,
        );

  final BaseController? controller;
  final Rx<LoadState>? loadStateRx;
  final Widget child;
  final VoidCallback? onRetry;
  final Widget? skeletonChild;
  final double? minHeight;
  final bool embedInScrollView;

  @override
  Widget build(BuildContext context) {
    if (loadStateRx != null) {
      return Obx(() {
        return _buildForState(
          loadStateRx!.value,
          onRetry,
        );
      });
    }
    return Obx(() {
      return _buildForState(
        controller!.loadState.value,
        controller!.onRetry,
      );
    });
  }

  Widget _buildForState(LoadState state, VoidCallback? retry) {
    switch (state) {
      case LoadState.error:
        return _wrapIfNeeded(
          PageStateError(onRetry: retry, minHeight: minHeight),
        );
      case LoadState.empty:
        final empty = PageStateEmpty(minHeight: minHeight);
        final content = minHeight != null
            ? SizedBox(height: minHeight, child: empty)
            : empty;
        return _wrapIfNeeded(content);
      case LoadState.loading:
        return Skeletonizer(
          enabled: true,
          child: skeletonChild ?? child,
        );
      case LoadState.retry:
        return _wrapIfNeeded(PageStateLoading(minHeight: minHeight));
      case LoadState.success:
        return child;
    }
  }

  Widget _wrapIfNeeded(Widget content) {
    if (!embedInScrollView) {
      return content;
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: constraints.maxHeight,
              child: Center(child: content),
            ),
          ],
        );
      },
    );
  }
}

/// 下拉刷新 + 页面焦点（可选），绑定 [BaseController]
class PageRefreshFocus extends StatelessWidget {
  const PageRefreshFocus({
    super.key,
    required this.controller,
    required this.child,
    this.isRefresh = false,
    this.isLoading = false,
    this.isFocus = false,
  });

  final BaseController controller;
  final Widget child;
  final bool isRefresh;
  final bool isFocus;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    var content = child;
    if (isRefresh) {
      content = SmartRefresher(
        controller: controller.refreshController,
        key: controller.refreshControllerKey,
        onRefresh: controller.onRefresh,
        onLoading: controller.onLoading,
        enablePullDown: true,
        enablePullUp: isLoading ? controller.enablePullUp : false,
        child: content,
      );
    }
    if (isFocus) {
      content = FocusDetector(
        onFocusGained: controller.onFocusGained,
        onFocusLost: controller.onFocusLost,
        child: content,
      );
    }

    return content;
  }
}

/// 跟踪 error → loading，用于重试时展示居中 Loading 而非骨架屏
class PageStateHost extends StatefulWidget {
  const PageStateHost({super.key, required this.state, required this.builder});

  final LoadState state;
  final Widget Function(BuildContext context, bool isRetryLoading) builder;

  @override
  State<PageStateHost> createState() => _PageStateHostState();
}

class _PageStateHostState extends State<PageStateHost> {
  bool _isRetryLoading = false;

  @override
  void didUpdateWidget(PageStateHost oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.state == LoadState.error &&
        widget.state == LoadState.loading) {
      _isRetryLoading = true;
    } else if (widget.state != LoadState.loading) {
      _isRetryLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _isRetryLoading);
  }
}

/// 整页状态：首屏可用骨架，从错误重试后显示居中 Loading
class PageStateView extends StatefulWidget {
  const PageStateView({
    super.key,
    required this.state,
    required this.child,
    this.onRetry,
    this.empty,
    this.skeletonChild,
    this.minHeight,
    this.isWhite = false,
    this.loadingColor,
  });

  final LoadState state;
  final Widget child;
  final VoidCallback? onRetry;
  final Widget? empty;
  final Widget? skeletonChild;
  final double? minHeight;
  final bool isWhite;
  final Color? loadingColor;

  @override
  State<PageStateView> createState() => _PageStateViewState();
}

class _PageStateViewState extends State<PageStateView> {
  bool _isRetryLoading = false;

  @override
  void didUpdateWidget(PageStateView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.state == LoadState.error &&
        widget.state == LoadState.loading) {
      _isRetryLoading = true;
    } else if (widget.state != LoadState.loading) {
      _isRetryLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.state) {
      case LoadState.retry:
      case LoadState.loading:
        if (!_isRetryLoading && widget.skeletonChild != null) {
          return widget.skeletonChild!;
        }
        return PageStateLoading(
          minHeight: widget.minHeight,
          color: widget.loadingColor,
        );
      case LoadState.error:
        return PageStateError(
          onRetry: widget.onRetry,
          minHeight: widget.minHeight,
          isWhite: widget.isWhite,
        );
      case LoadState.empty:
        return widget.empty ?? PageStateEmpty(minHeight: widget.minHeight);
      case LoadState.success:
        return widget.child;
    }
  }
}

/// 未传入 [image] 时的默认占位图标
Widget _pageStatePlaceholderIcon(IconData icon, {Color? color}) {
  return Icon(
    icon,
    size: 80.sp,
    color: color ?? MyColor.greyText,
  );
}

/// SmartRefresher 内错误/空态列表（可下拉）
Widget pageStateScrollable({required Widget child, double topPadding = 120}) {
  return ListView(
    physics: const AlwaysScrollableScrollPhysics(),
    children: [
      SizedBox(height: topPadding.h),
      child,
    ],
  );
}
