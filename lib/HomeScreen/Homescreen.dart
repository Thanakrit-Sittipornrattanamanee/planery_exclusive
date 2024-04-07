
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:planery_exclusive/HomeScreen/Profile.dart';
import 'package:planery_exclusive/HomeScreen/Calendar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  _homescreens createState()=>_homescreens();
}

class _homescreens extends State<HomeScreen>{
  int currentIndex =0;
  final screens =[
    Calendar(),
    ProfileScreen(),
  ];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar (title: const Text("Planery Exclusive! "),
      backgroundColor: Color.fromARGB(255, 183, 123, 239),
      centerTitle: true,
      
      
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: 
      GNav(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        backgroundColor: Color.fromARGB(255, 183, 123, 239),
        color: Colors.black,
        activeColor: Colors.white,
        tabBackgroundColor: Color.fromARGB(255, 185, 131, 235),
        onTabChange: (index) => setState(() => currentIndex = index),
        gap: 50,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          )
        ],
      ),
    );
  }
}

    