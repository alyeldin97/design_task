import 'package:design_task/constants/colors.dart';
import 'package:design_task/constants/fonts.dart';
import 'package:design_task/constants/images.dart';
import 'package:design_task/screens/core/reusable_widgets.dart';
import 'package:design_task/screens/core/text.dart';
import 'package:design_task/screens/home_screen/widgets/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return HorizontalPadding(
      padding: 14.w,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 259.w,
              height: 36.h,
              decoration: BoxDecoration(color: AppColors.grey),
              child: Row(
                children: [
                  Image.asset(AssetImagesPaths.search),
                  SizedBox(
                    width: 200.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsetsDirectional.only(
                              bottom: 18.h, start: 10.w),
                          hintText: 'ابحث عن وجبة او مطعم',
                          hintStyle: TextStyle(
                            fontFamily: FontsConstants.primaryFont,
                            fontSize: 12.sp,
                            fontWeight: FontWeighConstants.regular,
                            color: AppColors.secondaryColor,
                          ),
                          border: InputBorder.none),
                    ),
                  )
                ],
              ),
            ),
            Cart(),
          ],
        ),
      ),
    );
  }
}
