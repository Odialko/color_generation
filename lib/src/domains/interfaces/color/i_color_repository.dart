import 'dart:ui';

import 'package:dartz/dartz.dart';

/// Error handling in case avoid huge try/catch blocks in future
typedef ColorEither = Either<Exception, Color>;

/// ColorRepository interface for getting random color
abstract interface class IColorRepository {
  /// get random color obligation
  ColorEither getRandomColor();
}
