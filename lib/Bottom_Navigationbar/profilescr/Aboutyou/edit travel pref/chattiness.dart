import 'package:flutter/material.dart';

class Chattiness extends StatefulWidget {
  const Chattiness({super.key});

  @override
  State<Chattiness> createState() => _ChattinessState();
}

class _ChattinessState extends State<Chattiness> {
  String? _selectedOption; // Tracks the selected custom radio button
  bool _isSaving = false; // To show loader on save button click

  Future<void> _saveOption() async {
    setState(() {
      _isSaving = true; // Show loader
    });

    // Simulate saving process
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isSaving = false; // Hide loader
    });

    // Show confirmation message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Your chattiness preference is saved!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  // Custom method to create radio button
  Widget buildCustomRadioButton({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedOption = value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            // Icon
            Icon(icon, color: Colors.blue, size: 30),
            const SizedBox(width: 16),
            // Label
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            // Custom Radio Button
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
              ),
              child: _selectedOption == value
                  ? Center(
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.blue,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Chattiness',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            // Use the custom method to build each radio button
            buildCustomRadioButton(
              icon: Icons.chat_bubble_outline,
              label: "I love to chat",
              value: "chatty",
            ),
            buildCustomRadioButton(
              icon: Icons.message_outlined,
              label: "I'm chatty when I feel comfor-table",
              value: "comfortable",
            ),
            buildCustomRadioButton(
              icon: Icons.chat_bubble,
              label: "I'm the quiet type",
              value: "quiet",
            ),
            const Spacer(),
            // Save Button
            Center(
              child: _selectedOption != null
                  ? ElevatedButton(
                      onPressed: _isSaving ? null : _saveOption,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 15,
                        ),
                      ),
                      child: _isSaving
                          ? const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.green,
                              ),
                            )
                          : const Text(
                              'Save',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                    )
                  : const SizedBox(),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
