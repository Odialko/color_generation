import 'package:color_generator/src/screens/generator/generator_screen.dart';
import 'package:flutter/material.dart';

/// ColorGeneratorApp application is starting here
class ColorGeneratorApp extends StatelessWidget {
  /// default constructor for app
  const ColorGeneratorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GeneratorScreen(),
    );
  }
}
