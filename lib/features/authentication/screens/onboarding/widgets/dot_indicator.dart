import 'package:ecommerce/features/authentication/screens/onboarding/controller.onboarding/onboarding_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotIndication extends ConsumerWidget {
  const DotIndication({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = ref.read(onboardingProvider.notifier);
    return Positioned(
      bottom: TDeviceUtility.getBottomNavigationBarHeight() + 20,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        onDotClicked: (index) {
          controller.onDotClickUpdate(index);
        },
        controller: controller.pageController,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light : TColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
