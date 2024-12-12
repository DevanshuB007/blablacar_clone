import 'package:flutter/material.dart';

class YourrideScr extends StatefulWidget {
  const YourrideScr({super.key});

  @override
  State<YourrideScr> createState() => _YourrideScrState();
}

class _YourrideScrState extends State<YourrideScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Image.asset(
            'assets/images/ride.png',
            height: 400,
          ),
          const Text(
            'Your future travel plans \nwill appear here',
            style: TextStyle(
                color: Color(0xFF004652),
                fontSize: 32,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Find the perfext ride from thousands of \ndestinations,or publish to share your travel costs.',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
          )
        ],
      )),
    );
  }
}
