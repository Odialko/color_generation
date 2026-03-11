import 'package:color_generator/src/domains/constants/constants.dart';
import 'package:color_generator/src/screens/generator/generator_screen.dart';
import 'package:color_generator/src/screens/generator/store/generator_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GeneratorMobileView extends ConsumerWidget implements GeneratorScreen {
  const GeneratorMobileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorState = ref.watch(generatorProvider);
    final colorNotifier = ref.read(generatorProvider.notifier);

    return GestureDetector(
      onTap: () => colorNotifier.randomColorGenerator(),
      child: Scaffold(
        backgroundColor: colorState.color,
        body: Center(
          child: Text(
            TextConstants.mainText,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
