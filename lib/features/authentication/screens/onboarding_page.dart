import 'package:ecommerce/utils/constants/lottie_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

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

          //Dot navigation indicator

          //Circular button
        ],
      ),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const OnboardingScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(
            width: THelperFunctions.screenWidth(context) * 0.8,
            height: THelperFunctions.screenHeight(context) * 0.5,
            image,
            repeat: false,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: TSizes.spaceBtwItems),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
