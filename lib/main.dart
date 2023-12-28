
import 'package:flutter/material.dart';
import 'package:mobile_air_conditioning_system/usermanual/welcomepage.dart';
import 'package:mobile_air_conditioning_system/usermanual/step1.dart';
import 'package:mobile_air_conditioning_system/usermanual/step2.dart';
import 'package:mobile_air_conditioning_system/usermanual/step3.dart';
import 'package:mobile_air_conditioning_system/usermanual/step4.dart';
import 'package:mobile_air_conditioning_system/pages/home.dart';
import 'package:mobile_air_conditioning_system/pages/connection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/usermanual/welcome',
      routes: {
        '/home': (context) => BottomNavigation(),
         '/usermanual/welcome': (context) => WelcomePage(),
        '/usermanual/step1': (context) => Step1(),
        '/usermanual/step2': (context) => Step2(),
        '/usermanual/step3': (context) => Step3(),
        '/usermanual/step4': (context) => Step4(),
        '/connection': (context) => ConnectionScreen(),
      },
    );
  }
}

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          ConnectionScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'New Connection',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: const Color.fromARGB(255, 45, 51, 220),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
