import 'package:flutter/material.dart';
import 'package:quiz/taps/fake_screen.dart';
import 'package:quiz/taps/first_screen/first_screen.dart';
import 'package:quiz/taps/second_screen/second_screen.dart';
import 'package:quiz/taps/third_screen/third_screen.dart';
List<Widget> taps = [
  FirstScreen(),
  SecondScreen(),
  ThirdScreen(),
  FakeScreen()
];
class HomeScreen extends StatefulWidget {
  static String route = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: taps[index],
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: index,
        onTap: (value) {
         index = value;
         setState(() {
         });
       },
       selectedItemColor: Color(0XFF027A48),
        unselectedItemColor: Color(0XFF667085),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled) , label: "."),
        BottomNavigationBarItem(icon: Icon(Icons.window_outlined) , label: "."),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today) , label: "."),
        BottomNavigationBarItem(icon: Icon(Icons.person) , label: ".",)
      ],
        
      ),
    );
  }
}
