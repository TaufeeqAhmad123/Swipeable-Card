import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:swipeable_card/constant/app_color.dart';
import 'package:swipeable_card/views/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(textScaler: const TextScaler.linear(1.0)),
          child: GetMaterialApp(
            title: 'Swipe Effect',
            debugShowCheckedModeBanner: false,
            scrollBehavior: const ScrollBehavior()
                .copyWith(physics: const BouncingScrollPhysics()),
            defaultTransition: Transition.fadeIn,
            locale: const Locale('en', 'US'),
            theme: ThemeData(scaffoldBackgroundColor: AppColors.kPrimary),
            home:  CustomBottomBar(), // Home widget
          ),
        );
      },
    );
  }
}
