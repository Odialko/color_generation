import 'package:color_generator/src/generator/generator_screen.dart';
import 'package:flutter/material.dart';

class ColorGeneratorApp extends StatelessWidget {
  const ColorGeneratorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GeneratorScreen(),
    );
  }
}
