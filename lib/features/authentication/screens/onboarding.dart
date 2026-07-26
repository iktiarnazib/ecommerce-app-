import 'package:ecommerce/utils/constants/lottie_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:ecommerce/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
              Column(
                children: [
                  Lottie.asset(
                    width: THelperFunctions.screenWidth(context) * 0.8,
                    height: THelperFunctions.screenHeight(context) * 0.5,
                    TLottieString.phoneShopping,
                  ),
                  Text(
                    TText.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),
                  Text(
                    TText.onBoardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
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
