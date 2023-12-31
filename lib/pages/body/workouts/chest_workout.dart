import 'package:flutter/material.dart';
import 'package:myfitnessapp/widgets/cards/premade_card.dart';

class ChestWorkout extends StatefulWidget {
  const ChestWorkout({super.key});

  @override
  State<ChestWorkout> createState() => _ChestWorkoutState();
}

class _ChestWorkoutState extends State<ChestWorkout> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PremadeWorkoutCard(
          workoutTitle: 'Chest workout',
          imagePath: 'assets/images/musclegroups/chest.png',
        ),
      ],
    );
  }
}
