import 'package:blablacar/page/NameInputScreen.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isChecked = false;
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose(); // Dispose the controller to free resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Adjust layout for keyboard
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
      ),
      body: GestureDetector(
        // Dismiss keyboard on tap outside
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align children to start
            children: [
              const SizedBox(height: 20),
              const Text(
                "What's your email?",
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  filled: true, // Adds a background color to the TextField
                  fillColor: Colors.grey.shade200, // Background color
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none),
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600, // Hint text color
                    fontSize: 16, // Hint text size
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12, // Adjusts the inner padding
                  ),
                ),
                style: const TextStyle(
                  fontSize: 16, // Text size
                  color: Colors.black, // Input text color
                  fontWeight: FontWeight.w500, // Input text weight
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done, // Right arrow
                onSubmitted: (_) {
                  // Trigger navigation when "Next" arrow is pressed
                  _navigateToNextScreen(context);
                },
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Flexible(
                    child: Text(
                      "I don't want to receive special offers \nand personalized recommendations via email.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 1.5, // Adjusts line height
                      ),
                    ),
                  ),
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false; // Update the checkbox state
                      });
                    },
                    activeColor: Colors.blue, // Color when checkbox is active
                    checkColor: Colors.white, // Color of the checkmark
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'By entering your email, you agree to receive promotional emails from BlaBlaCar. Opt out now by checking the box above or at any time in your profile settings.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade700,
                  height: 1.5, // Adjusts line height
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToNextScreen(context);
        }, // Forward arrow icon
        backgroundColor: Colors.blue,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }

  // Function to navigate to the next screen
  void _navigateToNextScreen(BuildContext context) {
    if (_emailController.text.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const NameInputScreen(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter your email to continue.'),
        ),
      );
    }
  }
}
