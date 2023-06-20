import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// this extends the stateless widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Hello World');
  }
}
