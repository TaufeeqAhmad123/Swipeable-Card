// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:swipeable_card/constant/app_assets.dart';
import 'package:swipeable_card/constant/app_color.dart';
import 'package:swipeable_card/constant/app_const.dart';
import 'package:swipeable_card/constant/painter.dart';
import 'package:swipeable_card/controller/bottomNavBarCotroller.dart';
import 'package:swipeable_card/views/home_view.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({super.key});
  final Bottomnavbarcotroller bottomController =
      Get.put(Bottomnavbarcotroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.black,
      body: Obx(
        () {
          switch (bottomController.currentIndex.value) {
            case 0:
              return const HomeView();
            case 1:
              return const Text('');
            case 2:
              return const Text('');
            case 3:
              return const Text('');
            default:
              return const HomeView();
          }
        },
      ),
      bottomNavigationBar: Obx(() {
        bottomController.currentIndex.value;
        return SafeArea(
          child: SizedBox(
            height: 100.h,
            child: Stack(
              children: [
                Positioned(
                  left: 163.w,
                  bottom: 35.h,
                  child: Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 25.sp,
                        backgroundColor: AppColors.kPink,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 24.sp,
                        ),
                      )),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: kpagePadding,
                    child: SizedBox(
                      height: 60.h,
                      width: Get.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: CustomPaint(
                          painter: customPainter(),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _bottomItem(AppAssets.home, 0),
                        _bottomItem(AppAssets.message, 1),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: SvgPicture.asset(AppAssets.home,
                              color: Colors.transparent),
                        ),
                        _bottomItem(AppAssets.notification, 3),
                        _bottomItem(AppAssets.settings, 4),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _bottomItem(String icon, int index) {
    var isSelected = bottomController.currentIndex.value == index;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () => bottomController.updateIndex(index),
          icon: SvgPicture.asset(
            icon,
            color: isSelected ? AppColors.kPink : AppColors.kGrey,
            height: index == 4 ? 24.h : 27.h,
          ),
        )
      ],
    );
  }
}
