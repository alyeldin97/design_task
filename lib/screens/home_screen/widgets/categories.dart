import 'package:design_task/constants/colors.dart';
import 'package:design_task/constants/images.dart';
import 'package:design_task/screens/core/reusable_widgets.dart';
import 'package:design_task/screens/core/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categories extends StatelessWidget {
  List images = [
    AssetImagesPaths.restraunts,
    AssetImagesPaths.groceries,
    AssetImagesPaths.fastOrder,
  ];
  List names = [
    'المطاعم',
    'بقالة',
    'الطلب السريع',
  ];
  Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryTextRegular(text: 'الاقسام', fontSize: 21),
        Container(
          height: 130.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return AppPadding(
                  start: 15,
                  top: 15,
                  child: Stack(
                    children: [
                      Image.asset(images[index]),
                      AppPadding(
                        top: 100,
                        start: 40,
                        child: PrimaryTextRegular(
                          text: names[index],
                          fontSize: 12,
                          color: AppColors.mainColor,
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
