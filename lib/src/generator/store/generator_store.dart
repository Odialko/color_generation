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
  }) = _GeneratorStoreState;
}

class GeneratorNotifier extends StateNotifier<GeneratorStoreState> {

  GeneratorNotifier() : super(
    GeneratorStoreState(
      generatorState: const GeneratorState.init(),
    ),
  );

  void randomColorGenerator() {
    state = state.copyWith(
      generatorState: const GeneratorState.loading(),
    );
  }
}

final generatorProvider
= StateNotifierProvider<GeneratorNotifier, GeneratorStoreState>((ref) {
  return GeneratorNotifier();
});
