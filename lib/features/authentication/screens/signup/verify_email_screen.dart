import 'package:ecommerce/common/widgets/widgets.login_signup.dart/my_sign_button.dart';
import 'package:ecommerce/utils/constants/lottie_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView(
          children: [
            //*IMAGE
            Lottie.asset(
              TLottieString.emailVerify,
              repeat: false,
              width: THelperFunctions.screenWidth(context) * 0.6,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            //*TITLE & SUBTITLE
            Text(
              TText.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              "Iktiarnazib@gmail.com",
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              TText.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: TSizes.spaceBtwSections),
            //*BUTTONS
            TSignButton(text: 'Continue', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
