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
  bool isSwitched = false;
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
        backgroundColor: const Color(0xff2f2e3b),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(textcolor)),
          backgroundColor:const Color(0xff2f2e3b),
          title: SizedBox(
            height: kToolbarHeight,
            child: Image.asset('assets/images/company_name.png',
                fit: BoxFit.fitHeight),
          ),
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xff343637),
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text40(
                    label: 'MyFitnessApp',
                    labelcolor: textcolor,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.people,
                  color: Color(textcolor),
                ),
                title: Text20(label: 'Friends', labelcolor: textcolor),
              ),
              ListTile(
                leading: Icon(
                  Icons.shopping_bag,
                  color: Color(textcolor),
                ),
                title: Text20(label: 'Shop', labelcolor: textcolor),
              ),
            ],
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
            tabs: [
              GButton(
                icon: Icons.fitness_center,
                text: 'Workouts',
                iconColor: Color(textcolor),
              ),
              GButton(
                icon: Icons.list_alt,
                text: 'Workout history',
                iconColor: Color(textcolor),
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                iconColor: Color(textcolor),
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
