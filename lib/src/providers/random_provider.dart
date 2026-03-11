import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

/// provider for getting random number from random
/// usage:
/// final random = ref.watch(randomProvider);

final randomProvider = Provider<Random>((ref) {
  return Random();
});
