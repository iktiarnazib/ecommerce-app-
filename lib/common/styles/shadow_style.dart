import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: TColors.grey.withAlpha(25),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: TColors.grey.withAlpha(25),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
}
