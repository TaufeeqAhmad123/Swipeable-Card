// ignore_for_file: unnecessary_import

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:swipeable_card/constant/app_color.dart';
import 'package:swipeable_card/constant/app_style.dart';
import 'package:swipeable_card/model/card_model.dart';
import 'package:swipeable_card/utils/sizedBox_extension.dart';
import 'package:swipeable_card/widget/tag_widget.dart';

class Cardwidget extends StatelessWidget {
  final CardModel candidate;
  const Cardwidget({
    super.key,
    required this.candidate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: [
          Colors.white.withOpacity(0.1),
          Colors.white.withOpacity(0.2),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        border: Border.all(
          color: Colors.white
              .withOpacity(0.2), // Subtle border to enhance glass effect
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Shadow for depth
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              candidate.imageUrl,
              fit: BoxFit.cover,
              width: Get.width * 0.9,
              height: Get.height * 0.5,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 15),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.15),
                      Colors.white.withOpacity(0.2),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Hero(
                          tag: candidate.imageUrl,
                          child: Image.network(
                            candidate.imageUrl,
                            fit: BoxFit.cover,
                            width: Get.width * 1,
                            height: Get.height * 0.5,
                          ),
                        ),
                      ),
                      10.vSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(candidate.name, style: Style.kBold28),
                          10.vSpace,
                          Text(
                            'This is a testing phase of this app maybe it will go live someday.',
                            style: Style.kMedium16.copyWith(fontSize: 14.sp),
                          ),
                          10.vSpace,
                        ],
                      ),
                      30.vSpace,
                      tagsBuild(data: candidate.nftDataModel[0]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

