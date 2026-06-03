import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoDataWidget extends StatelessWidget {
  final String title ;
  Widget image;
  NoDataWidget({this.title= "",required this.image,super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          image,
          if (title.trim().isNotEmpty)
            Text(
              title,
              style: TextStyle(fontSize: 14.sp, color: Colors.grey),
            )
        ],
      ),
    );
  }
}
