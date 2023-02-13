import 'package:flutter/material.dart';
import 'package:uiscreen/downloadpage.dart';
import 'package:uiscreen/favoritepage.dart';
import 'package:uiscreen/homepage.dart';
import 'package:uiscreen/notificationpage.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  List pages=[
    homepage(),
    favoritepage(),
    downloadpage(),
    notificationpage(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState((){
      currentIndex =index;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
      onTap:onTap ,
      currentIndex: currentIndex,
      selectedItemColor: Colors.deepPurple,
      unselectedItemColor: Colors.grey,
      showSelectedLabels:false,
      showUnselectedLabels: false,
      elevation: 0,
      items: [
        BottomNavigationBarItem(label: "home",icon: Icon(Icons.home_filled)),
        BottomNavigationBarItem(label: "favorite",icon: Icon(Icons.favorite_rounded)),
        BottomNavigationBarItem(label: "download",icon: Icon(Icons.cloud_download_outlined)),
        BottomNavigationBarItem(label: "notification",icon: Icon(Icons.notifications_none_sharp)),
      ],
    ),
    );
  }
}
