import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onboardingProvider =
    StateNotifierProvider.autoDispose<OnboardingNotifier, int>(
      (ref) => OnboardingNotifier(),
    );

class OnboardingNotifier extends StateNotifier<int> {
  OnboardingNotifier() : super(0);

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  final pageController = PageController();

  //on page scroll update
  void updatePageIndicator(int index) {
    state = index;
  }

  //on dot click update
  void onDotClickUpdate(int index) {
    state = index;
    pageController.jumpToPage(state);
  }

  //on next page click
  void nextPage() {
    if (state == 2) {
      debugPrint("$state");
    } else {
      state++;
      pageController.jumpToPage(state);
    }
  }

  //on skip button click go to the last page
  void onSkip() {
    state = 2;
    pageController.jumpToPage(2);
  }
}
