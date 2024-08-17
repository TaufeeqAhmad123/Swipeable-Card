// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_card/constant/app_color.dart';
import 'package:swipeable_card/constant/app_style.dart';
import 'package:swipeable_card/model/card_model.dart';
import 'package:swipeable_card/utils/sizedBox_extension.dart';

class tagsBuild extends StatelessWidget {
  final NFTDataModel data;
  const tagsBuild({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      infoContainer(
          icon: CupertinoIcons.exclamationmark_shield, text: data.ethilim),
      8.hSpace,
      infoContainer(icon: CupertinoIcons.eye, text: data.ethilim),
      8.hSpace,
      infoContainer(icon: CupertinoIcons.star, text: data.ethilim),
    ],
  );
  }
}

class infoContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  const infoContainer({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.kPink.withOpacity(0.1),
            Colors.black.withOpacity(0.4),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
       
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          12.hSpace,
          Text(
            text,
            style: Style.kSemiBold18,
          )
        ],
      ));
  }
}