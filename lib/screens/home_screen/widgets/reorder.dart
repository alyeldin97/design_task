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
    'متجر السلام',
  ];
  ReOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      top: 20,
      child: Column(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(images[index]),
                              AppPadding(
                                  start: 10,
                                  child: PrimaryTextRegular(
                                      text: names[index], fontSize: 14))
                            ],
                          ),
                          AppPadding(
                            start: 40,
                            child: PrimaryTextRegular(
                              text: descriptions[index],
                              fontSize: 14,
                              color: AppColors.secondaryColor.withOpacity(0.4),
                            ),
                          ),
                          AppPadding(
                            top: 20,
                            child: Row(
                              children: [
                                AppPadding(
                                    start: 100,
                                    end: 5,
                                    child:
                                        Image.asset(AssetImagesPaths.reload)),
                                PrimaryTextRegular(
                                  text: 'اعادة الطلب',
                                  fontSize: 12,
                                  color: AppColors.green,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
