import 'package:color_generator/src/screens/generator/generator_screen.dart';
import 'package:color_generator/src/screens/generator/store/generator_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GeneratorMobileView extends ConsumerWidget implements GeneratorScreen {
  const GeneratorMobileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorState = ref.watch(generatorProvider);

    return Scaffold(
      backgroundColor: colorState.color,
      body: Center(
        child: Text(
          'Hello there',
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
