import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/addvehicle/carcolor.dart';
import 'package:flutter/material.dart';

class Maruti extends StatefulWidget {
  const Maruti({super.key});

  @override
  State<Maruti> createState() => _MarutiState();
}

class _MarutiState extends State<Maruti> {
  final TextEditingController _searchController = TextEditingController();

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
              "What's your vehicle's \nmodel?",
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
                hintText: "Mini",
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
              title: Text('ALTO 800'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carcolor()));
              },
            ),
            Divider(
              indent: 10,
            ),
            ListTile(
              title: Text('SWIFT DZIRE'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carcolor()));
              },
            ),
            Divider(
              indent: 10,
            ),
            ListTile(
              title: Text('SWIFT'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carcolor()));
              },
            ),
            Divider(
              indent: 10,
            ),
            ListTile(
              title: Text('WAGON R'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carcolor()));
              },
            ),
            Divider(
              indent: 10,
            ),
            ListTile(
              title: Text('1000'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carcolor()));
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
