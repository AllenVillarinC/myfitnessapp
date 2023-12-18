import 'package:flutter/material.dart';
import 'package:myfitnessapp/widgets/text_20.dart';
import 'package:myfitnessapp/widgets/text_30.dart';

class ChestWorkout extends StatefulWidget {
  const ChestWorkout({super.key});

  @override
  State<ChestWorkout> createState() => _ChestWorkoutState();
}

class _ChestWorkoutState extends State<ChestWorkout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(color: Color(0xff2f2e3b)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text20(label: 'Exercise'),
              const Text30(label: 'Beginner chest'),
              Container(
                decoration: const BoxDecoration(color: Color(0xff343637)),
                child: const Row(
                  children: [Icon(Icons.list_alt), Text20(label: '5 tasks')],
                ),
              ),
              Container(
                decoration: const BoxDecoration(color: Color(0xff343637)),
                child: const Row(
                  children: [Icon(Icons.av_timer), Text20(label: '45 minutes')],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
