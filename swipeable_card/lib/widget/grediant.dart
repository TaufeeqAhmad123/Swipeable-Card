import 'package:flutter/material.dart';
import 'package:swipeable_card/constant/app_color.dart';

class GradiantBGWidget extends StatelessWidget {
  final Widget child;
  const GradiantBGWidget({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
           AppColors.kPrimary,
           const Color.fromARGB(255, 66, 46, 80),
           AppColors.kPrimary,
          ],
        ),
      ),
      child: child,
    );
  }
}