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
                child: Stack(
                  children: [
                    Container(
                      height: 400,
                      width: 400,
                      padding: const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(400),
                        color: TColors.textWhite.withAlpha(
                          25,
                        ), //10% almost, it stores total 8 bit binary for color, which is max 255 steps
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
