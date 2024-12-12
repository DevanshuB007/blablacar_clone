import 'package:blablacar/screen/homepage.dart';
import 'package:flutter/material.dart';

class Otpscr extends StatefulWidget {
  const Otpscr({super.key});

  @override
  State<Otpscr> createState() => _OtpscrState();
}

class _OtpscrState extends State<Otpscr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Enter the code we've just sent you by SMS or WhatsApp",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    0xFF024550,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: "4-digit code",
                hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              title: const Text(
                'Resend code',
                style: TextStyle(fontSize: 15),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
              ),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Myhomepage()));
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Myhomepage
              ()));
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.arrow_forward,
          size: 30,
        ),
      ),
    );
  }
}
