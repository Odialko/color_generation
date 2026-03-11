import 'package:color_generator/src/screens/generator/view/generator_mobile_view.dart';
import 'package:color_generator/src/screens/generator/view/generator_web_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Screen for showing random background color
class GeneratorScreen extends StatelessWidget {
  /// default constructor for GeneratorScreen
  const GeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return const GeneratorWebView();
    }
    return const GeneratorMobileView();
  }
}


// /// Screen for showing random background color
// abstract class GeneratorScreen extends Widget {
//   /// factory allow choose by default on which platform app will run and what
//   /// view will be shown
//   factory GeneratorScreen({Key? key}) {
//     if (kIsWeb) {
//       return GeneratorWebView(key: key);
//     }
//     return GeneratorMobileView(key: key);
//   }
// }
