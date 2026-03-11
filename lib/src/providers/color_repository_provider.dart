import 'package:color_generator/src/data/repositories/color/color_repository.dart';
import 'package:color_generator/src/domains/interfaces/color/i_color_repository.dart';
import 'package:color_generator/src/providers/random_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final colorRepositoryProvider = Provider<IColorRepository>((ref) {
  final random = ref.watch(randomProvider);

  return ColorRepositoryImpl(random);
});