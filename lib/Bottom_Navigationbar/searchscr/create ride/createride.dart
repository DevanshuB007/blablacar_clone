import 'package:blablacar/Bottom_Navigationbar/searchscr/create%20ride/id.dart';
import 'package:flutter/material.dart';

class Createride extends StatefulWidget {
  const Createride({super.key});

  @override
  State<Createride> createState() => _CreaterideState();
}

class _CreaterideState extends State<Createride> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F9),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {},
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: screenWidth * 0.04,
              ),
              prefixIcon: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.015,
                horizontal: screenWidth * 0.03,
              ),
            ),
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.045,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          ListTile(
            leading: const Icon(Icons.keyboard_arrow_up),
            title: Text(
              "Earlier departures",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.045,
              ),
            ),
            tileColor: Colors.white,
          ),
          const SizedBox(height: 150),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Tomorrow',
              style: TextStyle(
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Id()),
              );
            },
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RideTimeWidget(
                              time: "06:00",
                              location: "Rajkot",
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            RideTimeWidget(
                              time: "09:40",
                              location: "Ahmedabad",
                            ),
                          ],
                        ),
                        Text(
                          "₹ 550.00",
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    const Divider(),
                    Row(
                      children: [
                        const Icon(Icons.car_rental, size: 30),
                        SizedBox(width: screenWidth * 0.03),
                        const CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                        SizedBox(width: screenWidth * 0.03),
                        Text(
                          "Devendra",
                          style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.electric_bolt_sharp),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: const BorderSide(color: Colors.blue),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                  vertical: screenHeight * 0.015,
                ),
                child: const Text("Create a ride alert"),
              ),
            ),
          ),
          Spacer(),
          SizedBox(height: screenHeight * 0.10),
          const Divider(thickness: 9),
          ListTile(
            leading: const Icon(Icons.keyboard_arrow_down),
            title: Text(
              "Later departures",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.045,
              ),
            ),
            tileColor: Colors.white,
          ),
          SizedBox(height: screenHeight * 0.02),
        ],
      ),
    );
  }
}

class RideTimeWidget extends StatelessWidget {
  final String time;
  final String location;

  const RideTimeWidget({
    Key? key,
    required this.time,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          height: screenWidth * 0.02,
          width: screenWidth * 0.02,
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          "$time  $location",
          style: TextStyle(
            fontSize: screenWidth * 0.045,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
