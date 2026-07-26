import 'package:ecommerce/features/authentication/screens/onboarding/controller.onboarding/onboarding_controller.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardingSkipButton extends ConsumerWidget {
  const OnboardingSkipButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
      top: TDeviceUtility.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          ref.read(onboardingProvider.notifier).onSkip();
        },
        child: Text('Skip'),
      ),
    );
  }
}
