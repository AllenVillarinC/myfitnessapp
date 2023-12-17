import 'package:flutter/material.dart';
import 'package:myfitnessapp/appconfig/screen_scaling.dart';

class Text30 extends StatelessWidget {
  final String label;
  const Text30({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label, // google connect?
      style: TextStyle(
        fontFamily: 'Montserrat-SemiBold',
        fontSize: 30 * screenScaling(context),
      ),
    );
  }
}
