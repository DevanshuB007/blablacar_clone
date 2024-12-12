import 'package:flutter/material.dart';

class Carcolor extends StatefulWidget {
  const Carcolor({super.key});

  @override
  State<Carcolor> createState() => _CarcolorState();
}

class _CarcolorState extends State<Carcolor> {
  String? _selectedColor; // Tracks the selected color
  final List<Map<String, dynamic>> _colors = [
    {"label": "black", "color": Colors.black, "value": "black"},
    {"label": "white", "color": Colors.white, "value": "white"},
    {"label": "Dark grey", "color": Colors.grey.shade700, "value": "Dark grey"},
    {"label": "Grey", "color": Colors.grey, "value": "Grey"},
    {"label": "claret", "color": Colors.redAccent.shade700, "value": "claret"},
    {"label": "Red", "color": Colors.red, "value": "Red"},
    {"label": "Dark blue", "color": Colors.blue.shade900, "value": "Dark blue"},
    {"label": "Blue", "color": Colors.blue, "value": "Blue"},
    {
      "label": "Dark green",
      "color": Colors.green.shade800,
      "value": "Dark green"
    },
    {"label": "green", "color": Colors.green, "value": "green"},
    {"label": "Brown", "color": Colors.brown, "value": "brown"},
    {"label": "Orange", "color": Colors.orange, "value": "orange"},
    {"label": "Yellow", "color": Colors.yellow, "value": "yellow"},
    {"label": "purple", "color": Colors.purple, "value": "purple"},
    {"label": "pink", "color": Colors.pink, "value": "pink"},
  ];

  bool _isSaving = false; // For showing the loader on Save button

  Future<void> _saveColor() async {
    setState(() {
      _isSaving = true; // Show loader
    });

    // Simulate saving process
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isSaving = false; // Hide loader
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Color $_selectedColor saved successfully!'),
      ),
    );
  }

  Widget _buildColorOption({
    required String label,
    required Color color,
    required String value,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedColor = value;
        });
      },
      child: Row(
        children: [
          Radio<String>(
            value: value,
            groupValue: _selectedColor,
            onChanged: (newValue) {
              setState(() {
                _selectedColor = newValue;
              });
            },
            activeColor: color,
          ),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Colors.black54,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "What color is your vehicle?",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              Column(
                children: _colors.map((colorOption) {
                  return _buildColorOption(
                    label: colorOption["label"],
                    color: colorOption["color"],
                    value: colorOption["value"],
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              if (_selectedColor != null)
                Center(
                  child: ElevatedButton(
                    onPressed: _isSaving ? null : _saveColor,
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
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          )
                        : const Text(
                            'Save',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
