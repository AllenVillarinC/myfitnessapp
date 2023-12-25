import 'package:flutter/material.dart';
import 'package:myfitnessapp/widgets/cards/premade_card.dart';

class ShouldersWorkout extends StatefulWidget {
  const ShouldersWorkout({super.key});

  @override
  State<ShouldersWorkout> createState() => _ShouldersWorkoutState();
}

class _ShouldersWorkoutState extends State<ShouldersWorkout> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PremadeWorkoutCard(
            workoutTitle: 'Shoulder workout',
            imagePath: 'assets/images/musclegroups/shoulders.jpg'),
      ],
    );
  }
}
