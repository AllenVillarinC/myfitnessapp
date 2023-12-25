import 'package:flutter/material.dart';
import 'package:myfitnessapp/widgets/cards/premade_card.dart';

class BackWorkout extends StatefulWidget {
  const BackWorkout({super.key});

  @override
  State<BackWorkout> createState() => _BackWorkoutState();
}

class _BackWorkoutState extends State<BackWorkout> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PremadeWorkoutCard(
          workoutTitle: 'Back workout',
          imagePath: 'assets/images/musclegroups/back.jpg',
        ),
      ],
    );
  }
}