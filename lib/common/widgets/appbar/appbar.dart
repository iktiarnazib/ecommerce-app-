import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnPressed;

  const TAppBar({
    super.key,
    this.title,
    required this.showBackArrow,
    this.leadingIcon,
    this.action,
    this.leadingOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Iconsax.arrow),
              )
            : IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtility.getAppBarHeight());
}
