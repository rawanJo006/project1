import 'package:project1/Pages/camera.dart';
import 'package:project1/Pages/local_list.dart';
import 'package:project1/Pages/most_liked.dart';
import 'package:project1/misc/colors.dart' as col;
import 'package:project1/Pages/map_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  // comments is here
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages=[
    Most_liked(),
    Local_list(),
    Camera(),
    Map_user(),
  ];
  int currentIndex= 0;
  void onTap(int index){
    setState(() {
      currentIndex= index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar:BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        backgroundColor:Colors.black,
        onTap:onTap ,
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        unselectedItemColor: Colors.grey.withOpacity(.8),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:"Most liked", icon: Icon(Icons.star_border)),
          BottomNavigationBarItem(label:"Home", icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(label:"camera", icon: Icon(Icons.camera_alt_outlined)),
          BottomNavigationBarItem(label:"Map_user", icon: Icon(Icons.location_on_outlined)),
        ],
      ),

    );
  }
}
