import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateProvider homeControllerProvider = StateProvider<HomeController>((
  ref,
) {
  return HomeController();
});

class HomeController {
  int carouselIndexController = 1;

  void onCarouselIndexUpdate(int index) {
    carouselIndexController = index;
  }
}
