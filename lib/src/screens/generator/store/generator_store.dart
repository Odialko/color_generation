import 'dart:ui';

import 'package:color_generator/src/domains/constants/color_constants.dart';
import 'package:color_generator/src/domains/interfaces/color/i_color_repository.dart';
import 'package:color_generator/src/providers/color_repository_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generator_store.freezed.dart';

/// GeneratorState represents the current state of generator for showing random
/// color
/// usage:
/// final generatorState = ref.watch(generatorProvider).generatorState;

@freezed
abstract class GeneratorState with _$GeneratorState {
  /// .init - initial state
  const factory GeneratorState.init() = GeneratorStateInit;

  /// .loading - loading state
  const factory GeneratorState.loading() = GeneratorStateLoading;

  /// .error - error state
  const factory GeneratorState.error({String? message}) = GeneratorStateError;

  /// .loaded - loaded state
  const factory GeneratorState.loaded() = GeneratorStateLoaded;
}

/// GeneratorStoreState - DATA for entire UI
/// usage:
/// final generatorState = ref.watch(generatorProvider);

@freezed
abstract class GeneratorStoreState with _$GeneratorStoreState {
  /// factory default constructor for
  const factory GeneratorStoreState({
    required GeneratorState generatorState,
    required Color backgroundColor,
    required Color contrastColor,
  }) = _GeneratorStoreState;
}

/// GeneratorNotifier manages the state, color transitions
class GeneratorNotifier extends StateNotifier<GeneratorStoreState> {
  final IColorRepository _colorRepository;

  /// initialize notifier wit repo and initial states
  GeneratorNotifier(this._colorRepository)
    : super(
        /// default state for generator
        /// backgroundColor: ColorConstants.defaultColor,
        /// contrastColor: ColorConstants.defaultContrastColor,
        const GeneratorStoreState(
          generatorState: GeneratorState.init(),
          backgroundColor: ColorConstants.defaultColor,
          contrastColor: ColorConstants.defaultContrastColor,
        ),
      );

  /// generate random color from repository and update state and handle errors
  Future<void> randomColorGenerator() async {
    debugPrint('randomColorGenerator');
    state = state.copyWith(generatorState: const GeneratorState.loading());
    await Future.delayed(const Duration(milliseconds: 300));
    final result = _colorRepository.getRandomColor();

    result.fold(
      (error) => state = state.copyWith(
        generatorState: GeneratorState.error(message: error.toString()),
      ),
      (generatedColor) {
        state = state.copyWith(
          generatorState: const GeneratorState.loaded(),
          backgroundColor: generatedColor,
        );
        makeContrastColorToRandom();
      },
    );
  }

  /// make contrast color to random color - black or white
  void makeContrastColorToRandom() {
    debugPrint('makeContrastColorToRandom');
    state = state.copyWith(
      contrastColor: state.backgroundColor.computeLuminance() > 0.5
          ? ColorConstants.defaultContrastColor
          : ColorConstants.defaultColor,
    );
  }
}

/// provider for getting random color from repository on UI side
final generatorProvider =
    StateNotifierProvider<GeneratorNotifier, GeneratorStoreState>((ref) {
      return GeneratorNotifier(ref.watch(colorRepositoryProvider));
    });
