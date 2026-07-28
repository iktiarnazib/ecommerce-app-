import 'package:flutter/material.dart';

class TSignButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const TSignButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: onTap, child: Text(text)),
    );
  }
}
