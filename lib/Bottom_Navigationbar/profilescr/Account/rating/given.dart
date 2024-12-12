import 'package:flutter/material.dart';

class Given extends StatefulWidget {
  const Given({super.key});

  @override
  State<Given> createState() => _GivenState();
}

class _GivenState extends State<Given> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0, right: 80),
          child: Image.asset(
            'assets/images/rating.png', // Replace with your image path
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          "You haven't received any given yet",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
