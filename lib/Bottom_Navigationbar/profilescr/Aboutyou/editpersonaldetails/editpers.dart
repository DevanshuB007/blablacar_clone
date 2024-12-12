import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/editpersonaldetails/dobscr.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/editpersonaldetails/emailscr.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/editpersonaldetails/firstname.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/editpersonaldetails/lastname.dart';
import 'package:flutter/material.dart';

class Editpers extends StatefulWidget {
  const Editpers({super.key});

  @override
  State<Editpers> createState() => _EditpersState();
}

class _EditpersState extends State<Editpers> {
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
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personal Details',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                'First Name',
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              subtitle: Text(
                'Devanshu',
                style: TextStyle(
                    color: Colors.blue.shade600,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Firstname()));
              },
            ),
            ListTile(
              title: Text(
                'Last Name',
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              subtitle: Text(
                'Bhatti',
                style: TextStyle(
                    color: Colors.blue.shade600,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Lastname()));
              },
            ),
            ListTile(
              title: Text(
                'Date of birth',
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              subtitle: Text(
                '15/08/2003',
                style: TextStyle(
                    color: Colors.blue.shade600,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Dobscr()));
              },
            ),
            ListTile(
              title: Text(
                'Email address',
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              subtitle: Text(
                'devanshu11@gmail.com',
                style: TextStyle(
                    color: Colors.blue.shade600,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Emailscr()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_circle_outline, color: Colors.blue),
              title: const Text(
                'Add Phone Number',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
            const Divider(
              indent: 10,
            ),
            ListTile(
              leading: const Icon(Icons.add_circle_outline, color: Colors.blue),
              title: const Text(
                'Add mini bio',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
