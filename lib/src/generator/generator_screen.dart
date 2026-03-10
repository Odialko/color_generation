import 'package:color_generator/src/generator/view/generator_mobile_view.dart';
import 'package:color_generator/src/generator/view/generator_web_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class GeneratorScreen extends Widget {
  factory GeneratorScreen({Key? key}) {
    if (kIsWeb) {
      return GeneratorWebView(key: key);
    }
    return GeneratorMobileView(key: key);
  }
}
