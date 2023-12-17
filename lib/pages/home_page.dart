import 'package:flutter/material.dart';
import 'package:myfitnessapp/appconfig/screen_scaling.dart';
import 'package:myfitnessapp/widgets/text_20.dart';
import 'package:myfitnessapp/widgets/text_30.dart';
import 'package:myfitnessapp/widgets/text_40.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: const Color(0xfff5f5f5),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: SizedBox(
                width: 430 * screenScaling(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 65 * screenScaling(context),
                          width: 65 * screenScaling(context),
                          decoration: BoxDecoration(
                            color: const Color(0xff343637).withOpacity(0.7),
                            borderRadius: BorderRadiusDirectional.circular(15),
                          ),
                          child: const Icon(
                            Icons.menu_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
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
                      labelPadding: EdgeInsets.all(15 * screenScaling(context)),
                      tabs: const [
                        Text20(label: 'Chest'),
                        Text20(label: 'Back'),
                        Text20(label: 'Shoulders'),
                        Text20(label: 'Arms'),
                        Text20(label: 'Core'),
                        Text20(label: 'Legs'),
                        Text20(label: 'Cardio'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
