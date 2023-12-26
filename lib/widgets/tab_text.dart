import 'package:flutter/material.dart';
import 'package:myfitnessapp/appconfig/screen_scaling.dart';

class TabText extends StatelessWidget {
  final String label;
  const TabText({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontFamily: 'Montserrat-Bold',
        fontSize: 20 - (20 * screenScaling(context)),
      ),
    );
  }
}
