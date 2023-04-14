import 'package:get_invincible/core/colors.dart';
import 'package:get_invincible/screens/bildiriler.dart';
import 'package:flutter/material.dart';
import 'package:get_invincible/screens/personal.dart';
import 'package:get_invincible/screens/step_counter.dart';

import 'home_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;
  static  List<Widget> _widgetOptions = [
    HomeScreen(),
    Bildiriler(),
    Personel(),
    StepCounterPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          homeBottomNavigationBarItem(),
          caloriesBottomNavigationBarItem(),
          bodyBottomNavigationBarItem(),
          stepCountBottomNavigationBarItem(),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: ColorConstants.instance.bottomBarIcon,
        onTap: _onItemTapped,
      ),
    );
  }

  BottomNavigationBarItem bodyBottomNavigationBarItem() {
    return const BottomNavigationBarItem(
          icon: Icon(Icons.accessibility),
          label: 'Body',
        );
  }

  BottomNavigationBarItem caloriesBottomNavigationBarItem() {
    return const BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: 'Calories',
        );
  }

  BottomNavigationBarItem homeBottomNavigationBarItem() {
    return const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        );
  }
}

BottomNavigationBarItem stepCountBottomNavigationBarItem() {
  return const BottomNavigationBarItem(
    icon: Icon(Icons.snowshoeing_sharp),
    label: 'Step Counter',
  );
}

