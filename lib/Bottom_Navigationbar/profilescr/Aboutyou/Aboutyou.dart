import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/addprofile.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/addvehicle.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/confemail.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/addbio.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/edit%20travel%20pref/edittravelpref.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/editpersonaldetails/editpers.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/editprofile.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/verifygov.dart';
import 'package:flutter/material.dart';

class Aboutyou extends StatefulWidget {
  const Aboutyou({super.key});

  @override
  State<Aboutyou> createState() => _AboutyouState();
}

class _AboutyouState extends State<Aboutyou> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300,
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Devanshu',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text('Newcomer')
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Editprofile()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ListTile(
            leading: const Icon(Icons.add_circle_outline, color: Colors.blue),
            title: const Text(
              'Add Profile picture',
              style: TextStyle(color: Colors.blue),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Addprofile()));
            },
          ),
            ListTile(
              title: const Text(
                'Edit personal details',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Editpers()));
              },
            ),
            const Divider(),
            const Text(
              'Verify your profile',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: const Icon(Icons.add_circle_outline, color: Colors.blue),
              title: const Text(
                'Verify your Govt. ID',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Verifygov()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_circle_outline, color: Colors.blue),
              title: const Text(
                'Confirm email devanshu777@gmail.com',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Confemail()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_circle_outline, color: Colors.blue),
              title: const Text(
                '+919316072255',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
            const Divider(
              height: 40,
            ),
            const Text(
              'About You ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: const Icon(Icons.add_circle_outline, color: Colors.blue),
              title: const Text(
                'Adda minii bio',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Addbio()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.add, color: Colors.blue),
              title: const Text(
                "i'm chatty when i feel comfortable",
                style: TextStyle(color: Colors.blue),
              ),
              // onTap: () {
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => Edittravelpref()));
              // },
            ),
            ListTile(
              leading: const Icon(Icons.add, color: Colors.blue),
              title: const Text(
                "i'll jam depending on the mood",
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.add, color: Colors.blue),
              title: const Text(
                "Cigarette breaks outside the car  are ok",
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.add, color: Colors.blue),
              title: const Text(
                "i'll travel with pets depending on the animal",
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(
                Icons.add_circle_outline,
                color: Colors.blue,
              ),
              title: const Text(
                'Edit travel Preferences',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Edittravelpref()));
              },
            ),
            const Divider(
              height: 40,
            ),
            const Text(
              'Vehicles',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: const Icon(
                Icons.add_circle_outline,
                color: Colors.blue,
              ),
              title: const Text(
                'Add vehicle',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Addvehicle()));
              },
            )
          ],
        ),
      ),
    );
  }
}
