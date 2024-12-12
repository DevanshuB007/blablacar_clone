// import 'package:flutter/material.dart';

// class NextScreen extends StatefulWidget {
//   const NextScreen({super.key});

//   @override
//   State<NextScreen> createState() => _NextScreenState();
// }

// class _NextScreenState extends State<NextScreen> {
//   bool isChecked = false;
//   final TextEditingController _Firstname = TextEditingController();
//   final TextEditingController _Lastname = TextEditingController();

//   @override
//   void dispose() {
//     _Firstname.dispose(); // Dispose the controller to free resources
//     _Lastname.dispose(); // Dispose the controller to free resources
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true, // Adjust layout for keyboard
//       appBar: AppBar(
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             color: Colors.blue,
//             size: 30,
//           ),
//           onPressed: () {
//             Navigator.pop(context); // Navigate back
//           },
//         ),
//       ),
//       body: GestureDetector(
//         // Dismiss keyboard on tap outside
//         onTap: () {
//           FocusScope.of(context).unfocus();
//         },
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 24.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment:
//                 CrossAxisAlignment.start, // Align children to start
//             children: [
//               SizedBox(height: 20),
//               Text(
//                 "What's your name?",
//                 style: TextStyle(
//                   fontSize: 33,
//                   fontWeight: FontWeight.w400,
//                 ),
//                 textAlign: TextAlign.start,
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 controller: _Firstname,
//                 decoration: InputDecoration(
//                   filled: true, // Adds a background color to the TextField
//                   fillColor: Colors.grey.shade200, // Background color
//                   // border: InputBorder.none,

//                   border: OutlineInputBorder(
//                       //   borderRadius: BorderRadius.circular(12),
//                       //   borderSide:
//                       //       BorderSide(color: Colors.grey.shade400), // Border color
//                       ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide(
//                         color: Colors
//                             .grey.shade400), // Border color when not focused
//                   ),
//                   hintText: "Firt name",
//                   hintStyle: TextStyle(
//                     color: Colors.grey.shade600, // Hint text color
//                     fontSize: 16, // Hint text size
//                   ),
//                   contentPadding: EdgeInsets.symmetric(
//                     horizontal: 16,
//                     vertical: 12, // Adjusts the inner padding
//                   ),
//                   suffixIcon: _Firstname.text.isNotEmpty
//                       ? IconButton(
//                           icon: Icon(Icons.clear),
//                           onPressed: () {
//                             _Firstname.clear();
//                             setState(() {}); // Trigger UI update
//                           },
//                         )
//                       : null,
//                 ),
//                 style: TextStyle(
//                   fontSize: 16, // Text size
//                   color: Colors.black, // Input text color
//                   fontWeight: FontWeight.w500, // Input text weight
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//                 textInputAction: TextInputAction.done, // Right arrow
//                 onSubmitted: (_) {
//                   // Trigger navigation when "Next" arrow is pressed
//                   _navigateToNextScreen(context);
//                 },
//               ),
//               SizedBox(height: 10),
//               TextField(
//                 controller: _Lastname,
//                 decoration: InputDecoration(
//                   filled: true, // Adds a background color to the TextField
//                   fillColor: Colors.grey.shade200, // Background color
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide:
//                         BorderSide(color: Colors.grey.shade400), // Border color
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide(
//                         color: Colors
//                             .grey.shade400), // Border color when not focused
//                   ),
//                   hintText: "Last name",
//                   hintStyle: TextStyle(
//                     color: Colors.grey.shade600, // Hint text color
//                     fontSize: 16, // Hint text size
//                   ),
//                   contentPadding: EdgeInsets.symmetric(
//                     horizontal: 16,
//                     vertical: 12, // Adjusts the inner padding
//                   ),
//                   suffixIcon: _Lastname.text.isNotEmpty
//                       ? IconButton(
//                           icon: Icon(Icons.clear),
//                           onPressed: () {
//                             _Lastname.clear();
//                             setState(() {}); // Trigger UI update
//                           },
//                         )
//                       : null,
//                 ),
//                 style: TextStyle(
//                   fontSize: 16, // Text size
//                   color: Colors.black, // Input text color
//                   fontWeight: FontWeight.w500, // Input text weight
//                 ),
//                 keyboardType: TextInputType.name,
//                 textInputAction: TextInputAction.done, // Right arrow
//                 onSubmitted: (text) {
//                   // Trigger navigation when "Next" arrow is pressed
//                   setState(() {});
//                 },
//               ),
//               SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _navigateToNextScreen(context);
//         },
//         child: Icon(Icons.arrow_forward), // Forward arrow icon
//         backgroundColor: Colors.blue,
//       ),
//     );
//   }

//   void _navigateToNextScreen(BuildContext context) {
//     if (_Firstname.text.isNotEmpty) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const NextScreen(),
//         ),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Please enter your Name to continue.'),
//         ),
//       );
//     }
//   }
// }

import 'package:blablacar/page/dobscreen.dart';
import 'package:flutter/material.dart';

class NameInputScreen extends StatefulWidget {
  const NameInputScreen({super.key});

  @override
  _NameInputScreenState createState() => _NameInputScreenState();
}

class _NameInputScreenState extends State<NameInputScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body:
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "What's your name?",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: "First name",
                hintStyle: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: _firstNameController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _firstNameController.clear();
                          setState(() {});
                        },
                      )
                    : null,
              ),
              onChanged: (_) {
                setState(() {}); // Update UI when text changes
              },
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: "Last name",
                hintStyle: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: _lastNameController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _lastNameController.clear();
                          setState(() {});
                        },
                      )
                    : null,
              ),
              onChanged: (_) {
                setState(() {}); // Update UI when text changes
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Dobscreen()));
          // Implement navigation or action
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
