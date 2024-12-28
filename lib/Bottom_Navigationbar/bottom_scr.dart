import 'package:blablacar/Bottom_Navigationbar/inbox_scr.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/profile_scr.dart';
import 'package:blablacar/Bottom_Navigationbar/publish_scr.dart';
import 'package:blablacar/Bottom_Navigationbar/searchscr/search_scr.dart';
import 'package:blablacar/Bottom_Navigationbar/yourride_scr.dart';
import 'package:flutter/material.dart';

class BottomScr extends StatefulWidget {
  const BottomScr({super.key});

  @override
  State<BottomScr> createState() => _BottomScrState();
}

class _BottomScrState extends State<BottomScr> {
  int currentIndexvalue = 0;
  List screenlist = [
    const SearchScr(),
    const PublishScr(),
    const YourrideScr(),
    const InboxScr(),
    const ProfileScr(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            currentIndex: currentIndexvalue,
            onTap: (index) {
              setState(() {
                currentIndexvalue = index;
              });
            }, 
            selectedItemColor: const Color(0xFF0fa6e3),
            unselectedItemColor: const Color(0xFFa0a0a0),
            // showSelectedLabels: true,
            // showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline_outlined),
                label: 'Publish',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Your rides',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined),
                label: 'inbox',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ],
      ),
      body: screenlist[currentIndexvalue],
    );
  }
}
