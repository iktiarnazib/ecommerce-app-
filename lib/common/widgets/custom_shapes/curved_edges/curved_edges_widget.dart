import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class TCurvedEdgesWidget extends StatelessWidget {
  final Widget? child;
  const TCurvedEdgesWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCurvedEdges(), child: child);
  }
}
