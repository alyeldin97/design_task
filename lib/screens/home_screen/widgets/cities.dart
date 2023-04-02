import 'package:design_task/constants/colors.dart';
import 'package:design_task/constants/images.dart';
import 'package:design_task/screens/core/reusable_widgets.dart';
import 'package:design_task/screens/core/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CitySelection extends StatelessWidget {
  const CitySelection({super.key});

  @override
  Widget build(BuildContext context) {
    return HorizontalPadding(
      padding: 16,
      child: AppPadding(
        top: 28,
        bottom: 31,
        child: Row(
          children: [
            Image.asset(AssetImagesPaths.map),
            PrimaryTextRegular(text: 'طنطا , منطقة الاستاد', fontSize: 14),
            AppPadding(
              start: 160,
              child: PrimaryTextRegular(
                text: 'تغيير',
                isUnderLined: true,
                color: AppColors.secondaryColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
