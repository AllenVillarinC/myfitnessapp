import 'package:flutter/material.dart';
import 'package:myfitnessapp/widgets/cards/premade_card.dart';

class ArmsWorkout extends StatefulWidget {
  const ArmsWorkout({super.key});

  @override
  State<ArmsWorkout> createState() => _ArmsWorkoutState();
}

class _ArmsWorkoutState extends State<ArmsWorkout> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PremadeWorkoutCard(
            workoutTitle: 'Arms workout',
            imagePath: 'assets/images/musclegroups/arms.jpeg')
      ],
    );
  }
}
