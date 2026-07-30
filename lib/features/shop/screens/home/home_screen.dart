import 'package:ecommerce/features/shop/screens/home/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [TPrimaryHeaderContainer(child: Container())]),
    );
  }
}
