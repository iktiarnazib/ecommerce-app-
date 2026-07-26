import 'package:ecommerce/features/authentication/screens/onboarding/widgets/circular_next_button.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/dot_indicator.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_pages.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip_button.dart';
import 'package:ecommerce/utils/constants/lottie_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Horzontal scrollable page
          PageView(
            children: [
              OnboardingScreen(
                image: TLottieString.phoneShopping,
                title: TText.onBoardingTitle1,
                subtitle: TText.onBoardingSubTitle1,
              ),
              OnboardingScreen(
                image: TLottieString.shoppingCart,
                title: TText.onBoardingTitle2,
                subtitle: TText.onBoardingSubTitle2,
              ),
              OnboardingScreen(
                image: TLottieString.shoppingOnline,
                title: TText.onBoardingTitle3,
                subtitle: TText.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip button
          const OnboardingSkipButton(),

          //Dot navigation indicator
          const DotIndication(),

          //Circular button
          const CircularButton(),
        ],
      ),
    );
  }
}
