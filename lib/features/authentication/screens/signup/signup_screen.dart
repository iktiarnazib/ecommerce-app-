import 'package:ecommerce/common/widgets/widgets.login_signup.dart/my_sign_button.dart';
import 'package:ecommerce/common/widgets/widgets.login_signup.dart/mydivider.dart';
import 'package:ecommerce/common/widgets/widgets.login_signup.dart/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/signup/verify_email_screen.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/terms_and_condition_checkbox.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  void onCreateAccountTap() {
    THelperFunctions.navigateToScreen(context, VerifyEmailScreen());
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //*Title
                Text(
                  TText.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                //* Form
                TSignupForm(),
                const SizedBox(height: TSizes.spaceBtwSections),

                //*Terms&Conditions Field
                TTermsAndConditionCheckbox(dark: dark),
                const SizedBox(height: TSizes.spaceBtwSections),

                //*Signup Button
                TSignButton(
                  text: TText.createAccount,
                  onTap: () {
                    onCreateAccountTap();
                  },
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                //*Divider
                TDivider(dark: dark, text: TText.orSignUpWith),
                const SizedBox(height: TSizes.spaceBtwSections),
                const TSocialButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
