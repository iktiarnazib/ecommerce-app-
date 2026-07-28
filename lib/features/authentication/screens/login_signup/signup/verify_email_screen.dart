import 'package:ecommerce/common/widgets/widgets.login_signup.dart/my_sign_button.dart';
import 'package:ecommerce/features/authentication/screens/login_signup/success_screen.dart';
import 'package:ecommerce/utils/constants/lottie_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});
  void onContinueClick(BuildContext context) {
    THelperFunctions.navigateToScreen(context, SuccessScreen());
  }

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
              height: THelperFunctions.screenHeight(context) * 0.3,
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
            TSignButton(
              text: 'Continue',
              onTap: () {
                onContinueClick(context);
              },
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  elevation: 0,
                  foregroundColor: Colors.white,

                  disabledForegroundColor: Colors.grey,
                  disabledBackgroundColor: Colors.grey,

                  padding: const EdgeInsets.symmetric(vertical: 18),
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(TText.resendEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
