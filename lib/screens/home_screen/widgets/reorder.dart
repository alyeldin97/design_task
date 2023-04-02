import 'package:design_task/constants/colors.dart';
import 'package:design_task/constants/images.dart';
import 'package:design_task/screens/core/reusable_widgets.dart';
import 'package:design_task/screens/core/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReOrder extends StatelessWidget {
  List images = [
    AssetImagesPaths.indian,
    AssetImagesPaths.fastOrderSmall,
  ];
  List names = [
    'مطعم هندي',
    'طلب سريع',
  ];

  List descriptions = [
    'وجبة العاءلة',
    '',
  ];
  ReOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryTextRegular(text: 'اعادة الطلب', fontSize: 21),
        Container(
          height: 100.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return AppPadding(
                  start: 15,
                  top: 15,
                  child: Container(
                    height: 100.h,
                    width: 200.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.grey)),
                    child: Column(
                      children: [
                        Row(
                          children: [Image.asset(AssetImagesPaths.indian)],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
