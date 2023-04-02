import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalPadding extends StatelessWidget {
  final double padding;
  final Widget child;
  const HorizontalPadding(
      {super.key, required this.padding, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding.w),
      child: child,
    );
  }
}

class AppPadding extends StatelessWidget {
  final double top;
  final double bottom;
  final double start;
  final double end;
  final Widget child;
  const AppPadding({
    super.key,
    this.top = 0.0,
    this.bottom = 0.0,
    this.start = 0.0,
    this.end = 0.0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          top: top.h, bottom: bottom.h, start: start.w, end: end.w),
      child: child,
    );
  }
}
