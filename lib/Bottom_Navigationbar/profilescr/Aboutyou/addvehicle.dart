import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/addvehicle/ford.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/addvehicle/honda.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/addvehicle/hyndai.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/addvehicle/maruti.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/addvehicle/tata.dart';
import 'package:flutter/material.dart';

class Addvehicle extends StatefulWidget {
  const Addvehicle({super.key});

  @override
  State<Addvehicle> createState() => _AddvehicleState();
}

class _AddvehicleState extends State<Addvehicle> {
  final TextEditingController _searchController = TextEditingController();
  // String _searchQuery = ""; // Tracks the current search query

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What's your vehicle's \nbrand?",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30),
            // Search Box
            TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {
                  // _searchQuery = value; // Update the search query
                });
              },
              decoration: InputDecoration(
                hintText: "Search car brand",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: Text('FORD'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ford()));
              },
            ),
            Divider(
              indent: 10,
            ),
            ListTile(
              title: Text('HONDA'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Honda()));
              },
            ),
            Divider(
              indent: 10,
            ),
            ListTile(
              title: Text('HYUNDAI'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Hyndai()));
              },
            ),
            Divider(
              indent: 10,
            ),
            ListTile(
              title: Text('MARUTI'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Maruti()));
              },
            ),
            Divider(
              indent: 10,
            ),
            ListTile(
              title: Text('TATA'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Tata()));
              },
            ),
            // Display current search query (optional)
            // if (_searchQuery.isNotEmpty)
            //   Text(
            //     'Searching for: $_searchQuery',
            //     style: const TextStyle(fontSize: 16, color: Colors.grey),
            //   ),
          ],
        ),
      ),
    );
  }
}
