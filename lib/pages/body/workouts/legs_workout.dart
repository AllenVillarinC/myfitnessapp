import 'package:flutter/material.dart';
import 'package:myfitnessapp/widgets/cards/premade_card.dart';

class LegsWorkout extends StatefulWidget {
  const LegsWorkout({super.key});

  @override
  State<LegsWorkout> createState() => _LegsWorkoutState();
}

class _LegsWorkoutState extends State<LegsWorkout> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PremadeWorkoutCard(
            workoutTitle: 'Legs workout',
            imagePath: 'assets/images/musclegroups/legs.png')
      ],
    );
  }
}
