import 'package:color_generator/src/domains/constants/constants.dart';
import 'package:color_generator/src/screens/generator/store/generator_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// AnimatedText widget part of web view and mobile view
/// usage:
/// const AnimatedText();
class AnimatedText extends ConsumerWidget {
  /// default constructor for AnimatedText
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorState = ref.watch(generatorProvider);

    return AnimatedDefaultTextStyle(
      duration: AnimationConstants.shortAnimationDuration,
      curve: Curves.decelerate,
      style: TextStyle(
        fontSize: colorState.generatorState is GeneratorStateLoading ? 30 : 38,
        fontWeight: FontWeight.w700,
        color: colorState.contrastColor,
      ),
      child: const Text(TextConstants.mainText),
    );
  }
}
