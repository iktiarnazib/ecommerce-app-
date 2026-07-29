import 'package:ecommerce/common/styles/spacing_style.dart';
import 'package:ecommerce/common/widgets/widgets.login_signup.dart/my_sign_button.dart';
import 'package:ecommerce/utils/constants/lottie_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
        padding: TSpacingStyle.paddingWithAppbarHeight * 2,
        child: ListView(
          children: [
            //*Image with 60% of the screen width
            Lottie.asset(
              TLottieString.emailSentVerify,
              width: THelperFunctions.screenWidth(context) * 0.6,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            //*Title & Subtitle
            Text(
              TText.loginTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              TText.loginSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            //*Button
            TSignButton(text: TText.tContinue, onTap: () {}),
          ],
        ),
      ),
    );
  }
}
