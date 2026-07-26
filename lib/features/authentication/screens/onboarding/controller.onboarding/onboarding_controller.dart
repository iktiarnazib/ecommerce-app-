import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//onboarding index provider
StateProvider onboardingIndexProvider = StateProvider<int>((ref) => 0);

//onboarding page controller, provides page controller
//provider is used when it is intended for readonly purposes
final Provider onboardingPageControllerProvider = Provider<PageController>((
  ref,
) {
  final pageController = PageController();

  ref.onDispose(() => pageController.dispose());

  return pageController;
});
