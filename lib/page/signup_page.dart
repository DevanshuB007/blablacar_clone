import 'dart:math';
import 'package:blablacar/appwrite/app/data/config/auth_config.dart';
import 'package:blablacar/page/NameInputScreen.dart';
import 'package:blablacar/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appwrite/appwrite.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _emailController = TextEditingController();
  bool isLoading = false;

  final Client client = Client()
      .setEndpoint(AuthConfig.endpoint)
      .setProject(AuthConfig.projectId)
      .setSelfSigned(status: true);

  late final Account account;

  @override
  void initState() {
    super.initState();
    account = Account(client);
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future<void> signUpUser() async {
    final email = _emailController.text.trim();
    if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter an email.')),
      );
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      Provider.of<UserProvider>(context, listen: false)
          .setUserData("email", email);

      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => NameInputScreen(
                  email: '',
                )),
      );
    } catch (e) {
      print("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: ${e.toString()}")),
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "What's your email?",
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                hintText: "Email",
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: signUpUser,
        backgroundColor: Colors.blue,
        child: isLoading
            ? CircularProgressIndicator(color: Colors.white)
            : const Icon(Icons.arrow_forward),
      ),
    );
  }
}
