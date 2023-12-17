import 'package:flutter/material.dart';
import 'package:myfitnessapp/appconfig/screen_scaling.dart';

class Text20 extends StatelessWidget {
  final String label;
  const Text20({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontFamily: 'Montserrat-Bold',
        fontSize: 20 * screenScaling(context),
      ),
    );
  }
}
