import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeable_card/constant/app_const.dart';
import 'package:swipeable_card/constant/app_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swipeable_card/model/card_model.dart';
import 'package:swipeable_card/utils/sizedBox_extension.dart';
import 'package:swipeable_card/views/detail_view.dart';
import 'package:swipeable_card/views/widget/card_widget.dart';
import 'package:swipeable_card/widget/grediant.dart';

class HomeView extends StatefulWidget {
  //final CardModel candidate;
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  void _onEnd() {
    debugPrint('All cards have been swiped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradiantBGWidget(
        child: Padding(
          padding: kpagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              40.vSpace,
              _topbuild(),
              15.vSpace,
              Expanded(
                child: AppinioSwiper(
                    invertAngleOnBottomDrag: true,
                    swipeOptions: const SwipeOptions.all(),
                    onCardPositionChanged: (SwiperPosition position) {},
                    onEnd: _onEnd,
                    cardBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () =>Get.to(()=>  DetailView(index: index,cardModel: candidates[index],)),
                        child: Cardwidget(
                          candidate: candidates[index],
                        ),
                      );
                    },
                    cardCount: candidates.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _topbuild() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Trending',
        style: Style.kBold28,
      ),
      CircleAvatar(
        backgroundImage: const NetworkImage(
            'https://i.pinimg.com/564x/84/cf/6b/84cf6b5e76d7eba6a283d79ca9ca9e2d.jpg'),
        radius: 21.sp,
      )
    ],
  );
}
