import 'package:flutter/material.dart';
import 'package:myfitnessapp/widgets/cards/premade_card.dart';

class CoreWorkout extends StatefulWidget {
  const CoreWorkout({super.key});

  @override
  State<CoreWorkout> createState() => _CoreWorkoutState();
}

class _CoreWorkoutState extends State<CoreWorkout> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PremadeWorkoutCard(
            workoutTitle: 'Core workout',
            imagePath: 'assets/images/musclegroups/core.jpg')
      ],
    );
  }
}
