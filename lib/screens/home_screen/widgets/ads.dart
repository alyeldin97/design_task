import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:design_task/constants/colors.dart';
import 'package:design_task/screens/core/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/images.dart';

class Ads extends StatefulWidget {
  Ads({super.key});

  @override
  State<Ads> createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150.h,
          width: 345.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: CarouselSlider(
            carouselController: carouselController,
            options: CarouselOptions(
                autoPlayInterval: Duration(seconds: 2),
                autoPlay: true,
                aspectRatio: 20 / 10,
                viewportFraction: 1,
                height: double.infinity,
                disableCenter: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
            items: [
              AppPadding(
                start: 10,
                child: Container(
                  height: 361.h,
                  width: 324.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      image: DecorationImage(
                          image: AssetImage(AssetImagesPaths.sale),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
        ),
        //      HorizontalSlidableButton(
        //   width: MediaQuery.of(context).size.width / 3,
        //   buttonWidth: 60.0,
        //   color: Theme.of(context).accentColor.withOpacity(0.5),
        //   buttonColor: Theme.of(context).primaryColor,
        //   dismissible: false,
        //   label: Center(child: Text('Slide Me')),
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Text('Left'),
        //         Text('Right'),
        //       ],
        //     ),
        //   ),
        //   onChanged: (position) {
        //     setState(() {
        //       if (position == SlidableButtonPosition.end) {
        //         result = 'Button is on the right';
        //       } else {
        //         result = 'Button is on the left';
        //       }
        //     });
        //   },
        // ),
      ],
    );
  }
}


//  Center(
//           child: Container(
//             width: 50.w,
//             child: AppPadding(
//                 start: 50,
//                 child: SliderTheme(
//                   data: SliderThemeData(
//                     inactiveTrackColor: AppColors.grey,
//                     activeTickMarkColor: AppColors.grey,
//                     valueIndicatorColor: AppColors.grey,
//                     overlayColor: AppColors.grey,
//                     activeTrackColor: AppColors.grey,
//                     thumbColor: AppColors.green,
//                   ),
//                   child: Slider(
//                     max: 2.0,
//                     min: 0.0,
//                     value: 1,
//                     onChanged: (newValue) {
//                       log('rr');
//                       currentIndex = newValue.toInt();
//                     },
//                   ),
//                 )),
//           ),
//         )