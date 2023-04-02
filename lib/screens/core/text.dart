import 'package:design_task/constants/colors.dart';
import 'package:design_task/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextRegular extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final bool? isLineThrough;
  final bool? isCenter;
  final int? maxLines;
  final bool isUnderLined;
  const PrimaryTextRegular(
      {Key? key,
      required this.text,
      required this.fontSize,
      this.color,
      this.isLineThrough = false,
      this.isCenter = false,
      this.isUnderLined = false,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: isCenter! ? TextAlign.center : TextAlign.start,
      style: TextStyle(
        fontFamily: FontsConstants.primaryFont,
        fontSize: fontSize.sp,
        fontWeight: FontWeighConstants.regular,
        color: color ?? AppColors.secondaryColor,
        decoration: isLineThrough!
            ? TextDecoration.lineThrough
            : isUnderLined
                ? TextDecoration.underline
                : TextDecoration.none,
      ),
    );
  }
}

class PrimaryTextLight extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final bool? isLineThrough;
  final bool? isCenter;
  final int? maxLines;
  const PrimaryTextLight(
      {Key? key,
      required this.text,
      required this.fontSize,
      this.color,
      this.isLineThrough = false,
      this.isCenter = false,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: isCenter! ? TextAlign.center : TextAlign.start,
      style: TextStyle(
        fontFamily: FontsConstants.primaryFont,
        fontSize: fontSize.sp,
        fontWeight: FontWeighConstants.light,
        color: color ?? AppColors.secondaryColor,
        decoration:
            isLineThrough! ? TextDecoration.lineThrough : TextDecoration.none,
      ),
    );
  }
}

class PrimaryTextBold extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final bool? isLineThrough;
  final bool? isCenter;
  final int? maxLines;
  const PrimaryTextBold(
      {Key? key,
      required this.text,
      required this.fontSize,
      this.color,
      this.isLineThrough = false,
      this.isCenter = false,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: isCenter! ? TextAlign.center : TextAlign.start,
      style: TextStyle(
        fontFamily: FontsConstants.primaryFont,
        fontSize: fontSize.sp,
        fontWeight: FontWeighConstants.bold,
        color: color ?? AppColors.secondaryColor,
        decoration:
            isLineThrough! ? TextDecoration.lineThrough : TextDecoration.none,
      ),
    );
  }
}

class PrimaryTextExtraBold extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final bool? isLineThrough;
  final bool? isCenter;
  final int? maxLines;
  const PrimaryTextExtraBold(
      {Key? key,
      required this.text,
      required this.fontSize,
      this.color,
      this.isLineThrough = false,
      this.isCenter = false,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: isCenter! ? TextAlign.center : TextAlign.start,
      style: TextStyle(
        fontFamily: FontsConstants.primaryFont,
        fontSize: fontSize.sp,
        fontWeight: FontWeighConstants.extraBold,
        color: color ?? AppColors.secondaryColor,
        decoration:
            isLineThrough! ? TextDecoration.lineThrough : TextDecoration.none,
      ),
    );
  }
}
