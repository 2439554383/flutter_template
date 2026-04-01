import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/base/my_color.dart';
import 'package:flutter_template/page/tab/home/home_ctrl.dart';
import 'package:flutter_template/route/my_route.dart';
import 'package:get/state_manager.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rive/rive.dart';

class HomePage extends GetView<HomeCtrl> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children:  [
          _InteractiveKeyboardRive(
            height: 220.h,
            backgroundColor: mainBgColor,
          ),
          SizedBox(height: 20.h,),
          ElevatedButton(onPressed: (){MyRoutes.push(MyRoutes.test);}, child: Text("测试"))
        ],
    );
  }
}

class _InteractiveKeyboardRive extends StatefulWidget {
  const _InteractiveKeyboardRive({
    required this.height,
    required this.backgroundColor,
  });

  final double height;
  final Color backgroundColor;

  @override
  State<_InteractiveKeyboardRive> createState() => _InteractiveKeyboardRiveState();
}

class _InteractiveKeyboardRiveState extends State<_InteractiveKeyboardRive> {
  late final FileLoader _fileLoader = FileLoader.fromAsset(
    'assets/rive/keyboard.riv',
    riveFactory: Factory.flutter,
  );

  RiveWidgetController? _controller;
  
  void _bindInputs(RiveWidgetController controller) {
    _controller = controller;
  }

  void _handleTap() {
      // _controller?.scheduleRepaint();
  }

  @override
  void dispose() {
    _fileLoader.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: Material(
        color: widget.backgroundColor,
        child: SizedBox(
          height: widget.height,
          width: double.infinity,
          child: RiveWidgetBuilder(
            fileLoader: _fileLoader,
            onLoaded: (state) => _bindInputs(state.controller),
            builder: (context, state) {
              if (state is RiveLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is RiveFailed) {
                return const Center(child: Icon(Icons.error_outline));
              }
              final loaded = state as RiveLoaded;
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: _handleTap,
                child: RiveWidget(
                  controller: loaded.controller,
                  fit: Fit.fitWidth,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
