import 'package:flutter/material.dart';
import 'package:myfitnessapp/appconfig/screen_scaling.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: SizedBox(
              width: 430 * screenScaling(context),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 65 * screenScaling(context),
                        width: 65 * screenScaling(context),
                        decoration: BoxDecoration(
                          color: const Color(0xff151515).withOpacity(0.5),
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hi, Allen',
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 30 * screenScaling(context),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'let\'s start training',
                      style: TextStyle(
                        fontFamily: 'Montserrat-ExtraBold',
                        fontSize: 40 * screenScaling(context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
