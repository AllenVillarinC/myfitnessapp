import 'package:flutter/material.dart';
import 'package:myfitnessapp/widgets/cards/premade_card.dart';

class CardioWorkout extends StatefulWidget {
  const CardioWorkout({super.key});

  @override
  State<CardioWorkout> createState() => _CardioWorkoutState();
}

class _CardioWorkoutState extends State<CardioWorkout> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PremadeWorkoutCard(
            workoutTitle: 'Cardio workout',
            imagePath: 'assets/images/musclegroups/run.jpg')
      ],
    );
  }
}
