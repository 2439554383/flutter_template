import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/base/my_color.dart';
import 'package:flutter_template/base/my_text.dart';

class GenenalButton extends StatefulWidget {
  final VoidCallback? onTap;
  final String text;
  final double? width;
  final double? height;
  final double? radius;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Gradient? gradient;
  final BoxBorder? border;
  GenenalButton({
    super.key,
    required this.text,
    this.width,
    this.height,
    this.radius,
    this.textStyle,
    this.backgroundColor,
    this.gradient,
    required this.onTap,this.border,
  });

  @override
  State<GenenalButton> createState() => _GenenalButtonState();
}

class _GenenalButtonState extends State<GenenalButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: widget.onTap,
      child: Container(
        width: widget.width ?? 315.w,
        height: widget.height ?? 45.h,
        decoration: BoxDecoration(
          gradient: widget.gradient,
          color: widget.gradient == null
              ? (widget.backgroundColor ?? MyColor.main)
              : null,
              border: widget.border,
          borderRadius: BorderRadius.circular(widget.radius ?? 22.5.r),
        ),
        clipBehavior: Clip.hardEdge,
        child: Center(
          child: Text(
            widget.text,
            style:
                widget.textStyle ?? MyText.w6_15.copyWith(color: MyColor.white),
          ),
        ),
      ),
    );
  }
}
