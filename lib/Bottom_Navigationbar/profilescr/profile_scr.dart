import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/Aboutyou.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Account/Account.dart';
import 'package:flutter/material.dart';

class ProfileScr extends StatefulWidget {
  const ProfileScr({super.key});

  @override
  State<ProfileScr> createState() => _ProfileScrState();
}

class _ProfileScrState extends State<ProfileScr>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Two tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        foregroundColor: Colors.black,
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,

          controller: _tabController,
          indicatorColor: Colors.black,
          labelColor: Colors.black, // Active tab text color
          unselectedLabelColor: Colors.grey, // Inactive tab text color
          tabs: const [
            Tab(text: 'About you'),
            Tab(text: 'Account'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Aboutyou(),
          Account(),
        ],
      ),
    );
  }
}
