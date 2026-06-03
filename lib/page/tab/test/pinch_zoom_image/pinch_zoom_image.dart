import 'package:flutter/material.dart';
import 'package:flutter_template/page/tab/test/pinch_zoom_image/pinch_zoom_image_ctrl.dart';
import 'package:get/state_manager.dart';

class PinchZoomImagePage extends GetView<PinchZoomImageCtrl> {
  PinchZoomImagePage({super.key});
  OverlayEntry? entry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: Text("data")),
      body: Center(child: buildImage()),
    );
  }

  void showOverlay(BuildContext context) {
    final renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox == null) return;
    final offset = renderBox.localToGlobal(Offset.zero);
    final size = MediaQuery.of(context).size;
    entry = OverlayEntry(
      builder: (context) {
        return Stack(
          children: [
              Positioned.fill(child: Container(color: Colors.black,)),
              Positioned(
              left: offset.dx,
              top: offset.dy,
              width: size.width,
              child: buildImage()),
            ],
        );
      },
    );
    final overlay = Overlay.of(context);
    overlay.insert(entry!);
    print("插入成功");
  }

  Widget buildImage() {
    return Builder(
      builder: (BuildContext context) {
        return InteractiveViewer(
          transformationController: controller.transformationController,
          // panEnabled: false,
          onInteractionStart: (detail) {
            // if (detail.pointerCount < 2){
            //   return;
            // }

            showOverlay(context);
            controller.onInteractionStart();
          },
          onInteractionEnd: (detail) {
            closeOverlay();
            controller.onInteractionEnd();
          },
          clipBehavior: Clip.none,
          child: Image.asset("assets/images/avatar.jpg"),
        );
      },
    );
  }

  void closeOverlay() {
    entry?.remove();
    entry = null;
  }
}
