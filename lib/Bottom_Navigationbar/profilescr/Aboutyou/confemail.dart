import 'package:flutter/material.dart';

class Confemail extends StatefulWidget {
  const Confemail({super.key});

  @override
  State<Confemail> createState() => _ConfemailState();
}

class _ConfemailState extends State<Confemail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Top Image
            Padding(
              padding: const EdgeInsets.only(top: 50.0, right: 80),
              child: Image.asset(
                'assets/images/men.png', // Replace with your image path
                width: 300,
                height: 300,
                fit: BoxFit.contain,
              ),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "We've sent a verification \nlink to your email address \nPlease check your inbox",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            // Bottom Button
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 270),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Handle button click
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Button background color
                  foregroundColor: Colors.blue, // Button text color
                ),
                child: const Text(
                  "Got it",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
