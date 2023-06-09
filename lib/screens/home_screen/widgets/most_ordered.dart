import 'package:design_task/constants/colors.dart';
import 'package:design_task/constants/images.dart';
import 'package:design_task/screens/core/reusable_widgets.dart';
import 'package:design_task/screens/core/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MostOrdered extends StatelessWidget {
  List images = [
    AssetImagesPaths.cookdoor,
    AssetImagesPaths.spectra,
  ];

  MostOrdered({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      top: 50,
      start: 16,
      end: 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              PrimaryTextRegular(text: 'الاكثر طلبا', fontSize: 21),
              AppPadding(
                start: 200,
                child: PrimaryTextRegular(
                  text: 'الكل',
                  fontSize: 16,
                  color: AppColors.green,
                ),
              ),
              Image.asset(AssetImagesPaths.back)
            ],
          ),
          Container(
            height: 130.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return AppPadding(
                    start: 15,
                    top: 15,
                    child: Container(
                      width: 240.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image: DecorationImage(
                            image: AssetImage(
                              images[index],
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
