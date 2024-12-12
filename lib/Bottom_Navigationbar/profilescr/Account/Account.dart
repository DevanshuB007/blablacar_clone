import 'package:blablacar/Bottom_Navigationbar/profilescr/Account/Data%20prottection/datapro.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Account/help/help.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Account/password/password.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Account/payment%20&%20refunds/payref.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Account/payment%20methods/paymentmethod.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Account/payout%20methods%20copy/payoutmethod.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Account/payouts/payout.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Account/postaladdress/postaladd.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Account/rating/rating.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final Uri _uri = Uri.parse(
      "https://blog.blablacar.in/about-us/terms-and-conditions?access_token=6565049e-c4c3-4b20-88c5-a9b23f3587e2?access_token=6565049e-c4c3-4b20-88c5-a9b23f3587e2");

  Future<void> _launchUrl() async {
    if (!await launchUrl(_uri)) {
      throw Exception('Could not launch $_uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Rating',
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Rating()));
              },
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Communication Preferences',
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Password',
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Password()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Postal address',
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Postaladd()));
              },
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Payout methods',
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Payoutmethod()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Payots',
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Payout()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Payment methods',
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Paymentmethod()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Payment & refunds',
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Payref()));
              },
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Help',
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Help()));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Terms and Conditions',
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: _launchUrl,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Data Protection',
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Datapro()));
              },
            ),
            Divider(),
            ListTile(
              title: const Text(
                'Log Out',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: const Text(
                'Close my account',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}