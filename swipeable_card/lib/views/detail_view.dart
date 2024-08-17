// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeable_card/constant/app_const.dart';
import 'package:swipeable_card/constant/app_style.dart';
import 'package:swipeable_card/model/card_model.dart';
import 'package:swipeable_card/utils/sizedBox_extension.dart';
import 'package:swipeable_card/views/widget/user_profile_card.dart';
import 'package:swipeable_card/widget/grediant.dart';
import 'package:swipeable_card/widget/tag_widget.dart';

class DetailView extends StatelessWidget {
  final CardModel cardModel;
  final int index;
  const DetailView({super.key, required this.cardModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradiantBGWidget(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  Text(
                    'Trending',
                    style: Style.kSemiBold18,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
              30.hSpace,
              Padding(
                padding: kpagePadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardModel.name,
                      style: Style.kSemiBold18,
                    ),
                    10.vSpace,
                    Text(
                        'Abstract image of nature, macro selective\nphotography to show the abstractions',
                        style: Style.kRegular14.copyWith(color: Colors.grey)),
                    20.vSpace,
                    Hero(
                      tag: cardModel.imageUrl,
                      child: Container(
                        width: Get.width,
                        height: 300,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink[200]!),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(cardModel.imageUrl),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.yellow.withOpacity(0.3),
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: const Offset(0, 4),
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           const  Padding(
                              // ignore: unnecessary_const
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: infoContainer(
                                  icon: Icons.star, text: 'End in 8H 42m'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 10, right: 10, left: 10),
                              child: tagsBuild(data: cardModel.nftDataModel[0]),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              40.vSpace,
              // ignore: prefer_const_constructors
              UserProfileCard(),
            ],
          ),
        ),
      ),
    );
  }
}

