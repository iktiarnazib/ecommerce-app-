import 'package:ecommerce/features/shop/screens/home/widgets/container_widget.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                color: TColors.primary,
                padding: EdgeInsets.all(0),
                child: Stack(children: [TCircularContainer()]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
