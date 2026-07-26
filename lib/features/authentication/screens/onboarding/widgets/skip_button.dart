import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtility.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(onPressed: () {}, child: Text('Skip')),
    );
  }
}
