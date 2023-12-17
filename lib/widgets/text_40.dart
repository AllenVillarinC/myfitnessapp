import 'package:flutter/material.dart';
import 'package:myfitnessapp/appconfig/screen_scaling.dart';

class Text40 extends StatelessWidget {
  final String label;
  const Text40({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontFamily: 'Montserrat-ExtraBold',
        fontSize: 40 * screenScaling(context),
      ),
    );
  }
}
