import 'package:flutter/material.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.blue,
        ),
      )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
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
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Devanshu',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text('21 y/0'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text('Experience  level: Newcomer'),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: const Text(
              'About Devanshu',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.chat, color: Colors.grey),
            title: const Text(
              "i'm chatty when i feel co",
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {},
          ),
          Divider(
            thickness: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: const Text(
              'About Devanshu',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text(
              "No rides published",
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "i'm chatty when i feel co",
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
