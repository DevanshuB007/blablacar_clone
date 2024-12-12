import 'package:blablacar/Bottom_Navigationbar/profilescr/Account/rating/given.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Account/rating/received.dart';
import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ratings',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              // TabBar for navigation
              const TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(text: 'Received'),
                  Tab(text: 'Given'),
                ],
              ),
              const SizedBox(height: 20),
              // TabBarView for displaying content
              Expanded(
                child: TabBarView(
                  children: [
                    Received(),
                    Given(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
