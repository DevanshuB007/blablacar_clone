import 'package:blablacar/screen/login.dart';
import 'package:blablacar/screen/signup.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          // gradient: LinearGradient(
          //   colors: [Colors.white, Colors.blue],
          //   begin: Alignment.topRight,
          //   end: Alignment.bottomLeft,
          // ),
        ),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    // Background Image
                    Image.asset(
                      'assets/images/logscr.JPG',
                      fit: BoxFit.cover,
                      height: 600,
                      width: double.infinity,
                    ),
                    // Top Image (placed over the background image)
                    Positioned(
                      top: 30, // Adjust the position from the top as needed
                      left: 150, // Adjust the position from the left as needed
                      child: Image.asset(
                        'assets/images/icon.PNG',
                        width: 80, // Set the desired width
                        height: 80, // Set the desired height
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Your pick of at rides at \n low prices ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF004652),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 350,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Signup()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00b2fc),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xFF0eabe0), // Set text color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10), // Set padding
                    textStyle: const TextStyle(
                      fontSize: 18, // Set font size
                      fontWeight: FontWeight.bold, // Set font weight
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30), // Set border radius
                    ),
                  ),
                  child: const Text("Log in"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
