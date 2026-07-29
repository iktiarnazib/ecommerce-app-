import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

StateProvider selectedIndexProvider = StateProvider((ref) {
  return 0;
});

final List<Widget> screens = [
  Container(color: Colors.green),
  Container(color: Colors.purple),
  Container(color: Colors.orange),
  Container(color: Colors.blue),
];
