import 'package:blablacar/Bottom_Navigationbar/searchscr/goingto.dart';
import 'package:blablacar/Bottom_Navigationbar/searchscr/leavingfrom.dart';
import 'package:blablacar/Bottom_Navigationbar/searchscr/passanger.dart';
import 'package:blablacar/Bottom_Navigationbar/searchscr/today.dart';
import 'package:flutter/material.dart';

class SearchScr extends StatefulWidget {
  const SearchScr({super.key});

  @override
  State<SearchScr> createState() => _SearchScrState();
}

class _SearchScrState extends State<SearchScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0, // Hide the default app bar
      ),
      body: Column(
        children: [
          // Top banner
          Stack(
            children: [
              // Background Image
              Container(
                height: 650,
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/logscr.JPG',
                  fit: BoxFit.fill,
                  height: 500,
                  width: double.infinity,
                ),
              ),
              // Top Image (placed over the background image)
              const Positioned(
                top: 50, // Adjust the position from the top as needed
                left: 50, // Adjust the position from the left as needed
                child: Text(
                  'Your pick of rides at \n low Prices ',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                // color: Colors.red,
                height: 600,
                width: double.infinity,
                alignment: Alignment.bottomCenter,
                child: Positioned(
                  bottom: 0,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 4,
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      width: 300,
                      height: 380,
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.circle_outlined),
                            title: const Text('Leaving from'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Leavingfrom()));

                              // Handle "Leaving from" action
                            },
                          ),
                          const Divider(),
                          ListTile(
                            leading: const Icon(Icons.circle_outlined),
                            title: const Text('Going to'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Goingto()));
                              // Handle "Going to" action
                            },
                          ),
                          const Divider(),
                          ListTile(
                            leading: const Icon(Icons.calendar_today),
                            title: const Text('Today'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Todaydate()));
                              // Handle date selection
                            },
                          ),
                          const Divider(),
                          ListTile(
                            leading: const Icon(Icons.person),
                            title: const Text('1 passenger'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Passanger()));
                              // Handle passenger count selection
                            },
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue, // Button color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                // Handle search action
                              },
                              child: const Text('Search'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 2,
              child: ListTile(
                leading: const Icon(Icons.schedule),
                title: const Text(
                  '603, 150 Feet Ring Rd, Sheetal Park, Manharpura 1, Dharam Nagar Society, Rajkot, Gujarat → Mumbai',
                  style: TextStyle(fontSize: 14),
                ),
                subtitle: const Text('1 passenger'),
                onTap: () {
                  // Handle tap on ride details
                },
              ),
            ),
          ), // Search form
        ],
      ),
    );
  }
}
