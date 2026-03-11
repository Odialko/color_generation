import 'dart:ui';

import 'package:color_generator/src/domains/constants/color_constants.dart';
import 'package:color_generator/src/domains/interfaces/color/i_color_repository.dart';
import 'package:color_generator/src/providers/color_repository_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generator_store.freezed.dart';

@freezed
abstract class GeneratorState with _$GeneratorState {
  const factory GeneratorState.init() = GeneratorStateInit;
  const factory GeneratorState.loading() = GeneratorStateLoading;
  const factory GeneratorState.error({String? message}) = GeneratorStateError;
  const factory GeneratorState.loaded() = GeneratorStateLoaded;
}

@freezed
abstract class GeneratorStoreState with _$GeneratorStoreState {
  const factory GeneratorStoreState({
    required GeneratorState generatorState,
    required Color backgroundColor,
    required Color contrastColor,
  }) = _GeneratorStoreState;
}

class GeneratorNotifier extends StateNotifier<GeneratorStoreState> {
  final IColorRepository _colorRepository;

  GeneratorNotifier(this._colorRepository)
    : super(
        GeneratorStoreState(
          generatorState: const GeneratorState.init(),
          backgroundColor: ColorConstants.defaultColor,
          contrastColor: ColorConstants.defaultContrastColor,
        ),
      );

  void randomColorGenerator() {
    debugPrint('randomColorGenerator');
    state = state.copyWith(generatorState: const GeneratorState.loading());

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

  void makeContrastColorToRandom() {
    debugPrint('makeContrastColorToRandom');
    state = state.copyWith(
      contrastColor: state.backgroundColor.computeLuminance() > 0.5
          ? ColorConstants.defaultContrastColor
          : ColorConstants.defaultColor,
    );
  }
}

final generatorProvider =
    StateNotifierProvider<GeneratorNotifier, GeneratorStoreState>((ref) {
      return GeneratorNotifier(ref.watch(colorRepositoryProvider));
    });
