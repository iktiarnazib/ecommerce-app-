import 'package:ecommerce/common/styles/spacing_style.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  height: 150,
                  image: AssetImage(
                    dark ? TImage.darkAppLogo : TImage.lightAppLogo,
                  ),
                ),

                //*title
                Text(
                  TText.loginTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),

                SizedBox(height: TSizes.sm),

                //*Subtitle
                Text(
                  TText.loginSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            //* form (different column)
            Form(
              child: Column(
                children: [
                  //* email
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
