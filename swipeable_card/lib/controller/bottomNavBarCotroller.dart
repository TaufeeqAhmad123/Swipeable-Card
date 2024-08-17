import 'package:get/get.dart';

class Bottomnavbarcotroller extends GetxController {
  var currentIndex = 0.obs;
  void updateIndex(int index) {
    currentIndex.value = index;
  }

  void resetIndex() {
    currentIndex.value = 0;
  }
}
