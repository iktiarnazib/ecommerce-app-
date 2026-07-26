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
}
