import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../constants/images.dart';
import '../../core/reusable_widgets.dart';
import '../../core/text.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.grey),
      height: 36.h,
      width: 73.w,
      child: Row(
        children: [
          Container(
            height: 34..h,
            width: 40.w,
            child: Stack(children: [
              AppPadding(
                start: 5,
                child: CircleAvatar(
                  radius: 10.r,
                  backgroundColor: AppColors.orange,
                  child: PrimaryTextRegular(text: '50', fontSize: 10),
                ),
              ),
              AppPadding(
                  start: 20,
                  top: 15,
                  child: Image.asset(AssetImagesPaths.cart)),
            ]),
          ),
          Container(
            width: 1.w,
            height: 24.h,
            color: Colors.grey[500],
          ),
          AppPadding(
              start: 5, child: PrimaryTextRegular(text: '300ج', fontSize: 12)),
        ],
      ),
    );
  }
}
