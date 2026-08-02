import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_catagories.dart';
import 'package:ecommerce/utils/constants/image_string.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //* Header Container
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                //*Appbar
                THomeAppbar(),

                //*space between sections
                const SizedBox(height: TSizes.spaceBtwSections),

                //*Search Bar
                TSearchBar(
                  icon: Iconsax.search_normal,
                  text: TText.searchForItems,
                  onTap: () {},
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                //*Catagories
                THomeCatagories(
                  image: TImage.cElectronics,
                  title: 'Electronics',
                  backgroundColor: null,
                ),
              ],
            ),
          ),
          //* Body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: TRoundedImage(),
          ),
        ],
      ),
    );
  }
}

class TRoundedImage extends StatelessWidget {
  final double? height, width;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  const TRoundedImage({
    super.key,
    this.height,
    this.width,
    required this.imageUrl,
    required this.applyImageRadius,
    this.border,
    required this.backgroundColor,
    this.fit,
    this.padding,
    required this.isNetworkImage,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(TSizes.md)
              : BorderRadius.zero,
          border: border,
          color: backgroundColor,
        ),

        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(TSizes.md)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl),
            fit: fit,
          ),
        ),
      ),
    );
  }
}
