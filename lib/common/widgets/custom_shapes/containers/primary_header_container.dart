import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  const TPrimaryHeaderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
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
                child: TRoundedContainer(
                  backgroundColor: TColors.white.withAlpha(25),
                ),
              ),
              Positioned(
                top: 150,
                right: -300,
                child: TRoundedContainer(
                  backgroundColor: TColors.white.withAlpha(25),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
