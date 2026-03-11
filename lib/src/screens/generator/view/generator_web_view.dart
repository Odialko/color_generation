import 'package:color_generator/src/domains/constants/animation_constants.dart';
import 'package:color_generator/src/screens/generator/store/generator_store.dart';
import 'package:color_generator/src/screens/generator/widgets/animated_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// GeneratorWebView - web view for showing random color on web
/// implements GeneratorScreen
class GeneratorWebView extends ConsumerWidget {
  /// default constructor for GeneratorWebView
  const GeneratorWebView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorState = ref.watch(generatorProvider);
    final colorNotifier = ref.read(generatorProvider.notifier);

    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: colorNotifier.randomColorGenerator,
        child: AnimatedContainer(
          duration: AnimationConstants.defaultAnimationDuration,
          color: colorState.backgroundColor,
          child: const Center(child: AnimatedText()),
        ),
      ),
    );
  }
}
