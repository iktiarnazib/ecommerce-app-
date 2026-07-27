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
                      labelText: TText.email,
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwInputFields),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: TText.password,
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwInputFields / 2),

                  //* remember me & forget password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //*remember me
                      Expanded(
                        child: Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            Text(TText.rememberMe),
                          ],
                        ),
                      ),

                      //* forgot password
                      TextButton(
                        onPressed: () {},
                        child: Text(TText.forgetPassword),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(TText.signIn),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(TText.createAccount),
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
