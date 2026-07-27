import 'package:ecommerce/common/styles/spacing_style.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce/common/widgets/widgets.login_signup.dart/mydivider.dart';
import 'package:ecommerce/common/widgets/widgets.login_signup.dart/social_buttons.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Padding(
        padding: TSpacingStyle.paddingWithAppbarHeight,
        child: ListView(
          children: [
            //*logo, title, subtitle
            TLoginHeader(dark: dark),
            //* form (different column)
            TLoginForm(),

            //*or sign in with
            TDivider(dark: dark, text: TText.orSignInWith),

            const SizedBox(height: TSizes.spaceBtwSections),

            //logo of facebook and google
            TSocialButton(),
          ],
        ),
      ),
    );
  }
}
