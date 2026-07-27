import 'package:flutter/material.dart';

class TSignButton extends StatelessWidget {
  final String text;
  const TSignButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: () {}, child: Text(text)),
    );
  }
}
