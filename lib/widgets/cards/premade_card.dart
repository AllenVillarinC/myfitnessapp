import 'package:flutter/material.dart';
import 'package:myfitnessapp/appconfig/screen_scaling.dart';

class PremadeWorkoutCard extends StatefulWidget {
  final String workoutTitle;
  final String imagePath;
  const PremadeWorkoutCard(
      {super.key, required this.workoutTitle, required this.imagePath});

  @override
  State<PremadeWorkoutCard> createState() => _PremadeWorkoutCardState();
}

class _PremadeWorkoutCardState extends State<PremadeWorkoutCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Stack(
        children: [
          SizedBox(
            width: 420 - (420 * screenScaling(context)),
            height: 200 - (200 * screenScaling(context)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width:  420 - (420 * screenScaling(context)),
            height: 200 - (200 * screenScaling(context)),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xff0057BC).withOpacity(0.7),
                  const Color(0xff343647).withOpacity(0.5)
                ],
                stops: const [0.2, 0.45],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      widget.workoutTitle,
                      style: TextStyle(
                          fontFamily: 'Montserrat-Bold',
                          fontSize: 20 - (20 * screenScaling(context)),
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Tasks:',
                      style: TextStyle(
                          fontFamily: 'Montserrat-Bold',
                          fontSize: 15 - (15 * screenScaling(context)),
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Time:',
                      style: TextStyle(
                          fontFamily: 'Montserrat-Bold',
                          fontSize: 15 - (15 * screenScaling(context)),
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Sets:',
                      style: TextStyle(
                          fontFamily: 'Montserrat-Bold',
                          fontSize: 15 - (15 * screenScaling(context)),
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Reps:',
                      style: TextStyle(
                          fontFamily: 'Montserrat-Bold',
                          fontSize: 15 - (15 * screenScaling(context)),
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
