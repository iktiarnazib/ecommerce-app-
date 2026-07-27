import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                Form(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: TText.firstName,
                                prefixIcon: Icon(Iconsax.user),
                              ),
                            ),
                          ),
                          const SizedBox(width: TSizes.spaceBtwInputFields),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: TText.lastName,
                                prefixIcon: Icon(Iconsax.user),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                //*USERNAME
                TextFormField(
                  decoration: InputDecoration(
                    labelText: TText.username,
                    prefixIcon: Icon(Iconsax.user_edit),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                //*EMAIL
                TextFormField(
                  decoration: InputDecoration(
                    labelText: TText.email,
                    prefixIcon: Icon(Iconsax.direct),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                //*PHONE NUMBER
                TextFormField(
                  decoration: InputDecoration(
                    labelText: TText.phoneNo,
                    prefixIcon: Icon(Iconsax.call),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                //*PASSWORD
                TextFormField(
                  obscureText: true,

                  decoration: InputDecoration(
                    labelText: TText.password,
                    prefixIcon: Icon(Iconsax.password_check),
                    suffixIcon: Icon(Iconsax.eye_slash),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
                //*Terms&Conditions Field
                Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Checkbox(value: true, onChanged: (value) {}),
                    ),
                    const SizedBox(width: TSizes.spaceBtwItems),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "${TText.iAgreeTo} ",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),

                          TextSpan(
                            text: "${TText.privacyPolicy}",
                            style: Theme.of(context).textTheme.bodyMedium!
                                .apply(
                                  color: dark ? TColors.white : TColors.primary,
                                  decoration: TextDecoration.underline,
                                  decorationColor: dark
                                      ? TColors.white
                                      : TColors.primary,
                                ),
                          ),
                          TextSpan(
                            text: " ${TText.and} ",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: TText.termsOfUse,
                            style: Theme.of(context).textTheme.bodyMedium!
                                .apply(
                                  color: dark ? TColors.white : TColors.primary,
                                  decoration: TextDecoration.underline,
                                  decorationColor: dark
                                      ? TColors.white
                                      : TColors.primary,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
                //*Signup Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(TText.createAccount),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
