import 'package:flutter/material.dart';
import 'package:myfitnessapp/appconfig/screen_scaling.dart';
import 'package:myfitnessapp/pages/body/workouts/arms_workout.dart';
import 'package:myfitnessapp/pages/body/workouts/back_workout.dart';
import 'package:myfitnessapp/pages/body/workouts/cardio_workout.dart';
import 'package:myfitnessapp/pages/body/workouts/chest_workout.dart';
import 'package:myfitnessapp/pages/body/workouts/core_workout.dart';
import 'package:myfitnessapp/pages/body/workouts/legs_workout.dart';
import 'package:myfitnessapp/pages/body/workouts/shoulders_workout.dart';
import 'package:myfitnessapp/widgets/text_20.dart';
import 'package:myfitnessapp/widgets/text_30.dart';
import 'package:myfitnessapp/widgets/text_40.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 430 - (430 * screenScaling(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text30(label: 'Hi, Allen'),
          const SizedBox(height: 5),
          const Text40(label: 'Let\'s start training!'),
          const SizedBox(height: 5),
          TabBar(
            dividerColor: Colors.transparent,
            splashBorderRadius: BorderRadius.circular(20),
            indicator: BoxDecoration(
              color: const Color(0xff046eea).withOpacity(0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            tabAlignment: TabAlignment.center,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            labelPadding: EdgeInsets.symmetric(
                horizontal: 25 - (25 * screenScaling(context)),
                vertical: 15 - (15 * screenScaling(context))),
            tabs: const [
              Text20(label: 'All'),
              Text20(label: 'Chest'),
              Text20(label: 'Back'),
              Text20(label: 'Shoulders'),
              Text20(label: 'Arms'),
              Text20(label: 'Core'),
              Text20(label: 'Legs'),
              Text20(label: 'Cardio'),
            ],
          ),
          const Expanded(
            child: TabBarView(children: [
              SingleChildScrollView(
                child: Column(children: [
                  ChestWorkout(),
                  BackWorkout(),
                  ShouldersWorkout(),
                  ArmsWorkout(),
                  CoreWorkout(),
                  LegsWorkout(),
                  CardioWorkout(),
                ]),
              ),
              ChestWorkout(),
              BackWorkout(),
              ShouldersWorkout(),
              ArmsWorkout(),
              CoreWorkout(),
              LegsWorkout(),
              CardioWorkout(),
            ]),
          )
        ],
      ),
    );
  }
}
