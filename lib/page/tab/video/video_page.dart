import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/base/my_color.dart';
import 'package:flutter_template/page/tab/home/home_ctrl.dart';
import 'package:flutter_template/page/tab/video/video_ctrl.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class VideoPage extends GetView<VideoCtrl> {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: .center,
      child: Text("Video Page"),
    );
  }
}
