import 'package:ecommerce/features/shop/screens/home/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ClipPath(
            clipper: TCurvedEdges(),
            child: Container(
              width: double.infinity,
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
                      top: 150,
                      right: -300,
                      child: TCircularContainer(
                        backgroundColor: TColors.white.withAlpha(25),
                      ),
                    ),
                    Column(
                      children: [
                        //appbar
                        Text('data'),
                        //search bar

                        //catagories
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
