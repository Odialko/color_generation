import 'dart:math';
import 'dart:ui';

import 'package:color_generator/src/domains/constants/constants.dart';
import 'package:color_generator/src/domains/interfaces/color/i_color_repository.dart';
import 'package:dartz/dartz.dart';

class ColorRepositoryImpl implements IColorRepository {
  final Random _random;

  ColorRepositoryImpl(this._random);

  @override
  ColorEither getRandomColor() {
    // TODO: implement getRandomColor
    try {
      final randomColor = Color.fromARGB(
        ColorConstants.defaultOpacity,
        _random.nextInt(ColorConstants.rgbLimit),
        _random.nextInt(ColorConstants.rgbLimit),
        _random.nextInt(ColorConstants.rgbLimit),
      );

      return Right(randomColor);
    } catch (e) {
      return Left(Exception('Cant get random color in ColorRepositoryImpl'));
    }
  }
}
