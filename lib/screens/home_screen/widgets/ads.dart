import 'dart:developer';

import 'package:action_slider/action_slider.dart';
import 'package:another_xlider/another_xlider.dart';
import 'package:another_xlider/models/handler.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:design_task/constants/colors.dart';
import 'package:design_task/screens/core/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slidable_button/slidable_button.dart';

import '../../../constants/images.dart';

class Ads extends StatefulWidget {
  Ads({super.key});

  @override
  State<Ads> createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  final CarouselController carouselController = CarouselController();

  int currentIndex = 0;
  ActionSliderController? controller;

  @override
  void initState() {
    controller = ActionSliderController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      top: 10,
      child: Column(
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
                    if (controller != null) {
                      if (index == 0) {
                        controller!.jump(0.1);
                      } else if (index == 1) {
                        controller!.jump(0.5);
                      } else {
                        controller!.jump(0.9);
                      }
                    }
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
                AppPadding(
                  start: 10,
                  child: Container(
                    height: 361.h,
                    width: 324.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        image: DecorationImage(
                            image: AssetImage(AssetImagesPaths.cookdoor),
                            fit: BoxFit.cover)),
                  ),
                ),
                AppPadding(
                  start: 10,
                  child: Container(
                    height: 361.h,
                    width: 324.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        image: DecorationImage(
                            image: AssetImage(AssetImagesPaths.spectra),
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
          ),
          ActionSlider.standard(
            sliderBehavior: SliderBehavior.move,
            stateChangeCallback: (state, state2, controller) {
              double position =
                  double.parse(state2.position.toStringAsFixed(2));
              bool isFromAutomaticSlide =
                  position == 0.1 || position == 0.5 || position == 0.9;

              if (!isFromAutomaticSlide &&
                  (position > 0.0 && position < 0.29)) {
                carouselController.jumpToPage(0);
              } else if (!isFromAutomaticSlide &&
                  position > 0.29 &&
                  position < 0.6) {
                carouselController.jumpToPage(1);
              } else if (!isFromAutomaticSlide &&
                  position > 0.6 &&
                  position < 1.0) {
                carouselController.jumpToPage(2);
              }
            },
            reverseSlideAnimationDuration: Duration(seconds: 100000),
            rolling: false,
            height: 20.h,
            width: 50.w,
            backgroundColor: AppColors.grey,
            boxShadow: [],
            controller: controller,
            icon: Container(
              width: 30.w,
              height: 10.h,
              decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(10.r)),
            ),
          )
        ],
      ),
    );
  }
}
