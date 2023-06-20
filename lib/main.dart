import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(const MyApp());
}

// this extends the stateless widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GradientContainer(
          const Color.fromARGB(255, 90, 1, 31),
          const Color.fromARGB(255, 224, 216, 140),
        ));
  }
}
