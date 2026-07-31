import 'package:ecommerce/common/widgets/image_text_widget/TVerticalImageText.dart'
    show TVerticalImageText;
import 'package:ecommerce/features/shop/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class THomeCatagories extends StatelessWidget {
  const THomeCatagories({
    super.key,
    required this.backgroundColor,
    required this.image,
    required this.title,
  });

  final Color? backgroundColor;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return TVerticalImageText(
            backgroundColor: backgroundColor,
            image: image,
            title: title,
          );
        },
      ),
    );
  }
}
