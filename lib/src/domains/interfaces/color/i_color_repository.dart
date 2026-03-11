import 'dart:ui';

import 'package:dartz/dartz.dart';

typedef ColorEither = Either<Exception, Color>;

abstract interface class IColorRepository {
  ColorEither getRandomColor();
}
