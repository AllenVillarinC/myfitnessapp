import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:myfitnessapp/appconfig/controllers.dart';
import 'package:myfitnessapp/pages/body/tab_bar.dart';
import 'package:myfitnessapp/widgets/text_20.dart';
import 'package:myfitnessapp/widgets/text_40.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    TabBarWidget(),
    Text(
      'Workout history',
    ),
    Text(
      'Profile',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: SizedBox(
            height: kToolbarHeight,
            child: Image.asset('assets/images/company_name.png',
                fit: BoxFit.fitHeight),
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Color(colorController),
            child: ListView(
              children: const [
                DrawerHeader(
                  child: Center(
                    child: Text40(label: 'MyFitnessApp'),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text20(label: 'Friends'),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_bag),
                  title: Text20(label: 'Shop'),
                ),
                // add switch to change from light mode to dark mode
              ],
            ),
          ),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: GNav(
            tabBackgroundColor: const Color(0xff046eea).withOpacity(0.7),
            gap: 10,
            activeColor: Colors.white,
            padding: const EdgeInsets.all(10),
            textStyle: const TextStyle(
                fontFamily: 'Montserrat-Bold', color: Colors.white),
            tabs: const [
              GButton(
                icon: Icons.fitness_center,
                text: 'Workouts',
              ),
              GButton(
                icon: Icons.list_alt,
                text: 'Workout history',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              )
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(
                () {
                  _selectedIndex = index;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
