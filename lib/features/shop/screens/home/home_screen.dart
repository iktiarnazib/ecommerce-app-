import 'package:ecommerce/features/shop/screens/home/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
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
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(
                        top: -150,
                        right: -250,
                        child: TCircularContainer(
                          backgroundColor: TColors.white.withAlpha(25),
                        ),
                      ),
                      Positioned(
                        height: 150,
                        width: -300,
                        child: TCircularContainer(
                          backgroundColor: TColors.white.withAlpha(25),
                        ),
                      ),
                      Column(
                        children: [
                          //appbar

                          //search bar

                          //catagories
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
