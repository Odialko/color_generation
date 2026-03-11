import 'package:color_generator/src/screens/generator/generator_screen.dart';
import 'package:flutter/material.dart';

class GeneratorMobileView extends StatelessWidget implements GeneratorScreen {
  const GeneratorMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello there',
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
