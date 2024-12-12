import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/edit%20travel%20pref/chattiness.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/edit%20travel%20pref/music.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/edit%20travel%20pref/pets.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/edit%20travel%20pref/smoking.dart';
import 'package:flutter/material.dart';

class Edittravelpref extends StatefulWidget {
  const Edittravelpref({super.key});

  @override
  State<Edittravelpref> createState() => _EdittravelprefState();
}

class _EdittravelprefState extends State<Edittravelpref> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: Colors.blue,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Travel Preferences',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                'Chattiness',
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              subtitle: Text(
                'i love to chat',
                style: TextStyle(
                    color: Colors.blue.shade600,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Chattiness()));
              },
            ),
            ListTile(
              title: Text(
                'Music',
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              subtitle: Text(
                "i'll am depending on the mood",
                style: TextStyle(
                    color: Colors.blue.shade600,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Music()));
              },
            ),
            ListTile(
              title: Text(
                'Smoking',
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              subtitle: Text(
                'Cigarette breaks outside the car aree okk',
                style: TextStyle(
                    color: Colors.blue.shade600,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Smoking()));
              },
            ),
            ListTile(
              title: Text(
                'Pets',
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              subtitle: Text(
                "i'll travle with pets depending onn the animal",
                style: TextStyle(
                    color: Colors.blue.shade600,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Pets()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
