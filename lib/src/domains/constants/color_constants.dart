import 'package:flutter/material.dart';

/// common Values for colors
/// usage:
/// import 'package:color_generator/src/domains/constants/constants.dart';
/// ColorConstants.defaultColor
class ColorConstants {
  ColorConstants._();

  /// limit value for RGB
  static const rgbLimit = 256;

  /// default opacity for colors
  static const defaultOpacity = 255;

  /// default color for background
  static const defaultColor = Colors.white;

  /// default color for contrast to background
  static const defaultContrastColor = Colors.black;
}
