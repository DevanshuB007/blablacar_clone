import 'package:flutter/material.dart';

class Addbio extends StatefulWidget {
  const Addbio({super.key});

  @override
  State<Addbio> createState() => _AddbioState();
}

class _AddbioState extends State<Addbio> {
  final TextEditingController bionameController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _showSaveButton = false;

  @override
  void initState() {
    super.initState();
    // Attach a listener to the focus node
    _focusNode.addListener(() {
      setState(() {
        _showSaveButton = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    bionameController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: Colors.blue,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What would you like \nother members to \nknow about you?',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 40),
            TextField(
              maxLines: 5,
              minLines: 1,
              controller: bionameController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText:
                    "Example: ''i'm a student at Delhi University,and  i offten visit friends in jaipu.i love photography andd rock music.",
                hintStyle: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 20,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: bionameController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          bionameController.clear();
                          setState(() {});
                        },
                      )
                    : null,
              ),
              onChanged: (_) {
                setState(() {}); // Update UI when text changes
              },
            ),
            if (_showSaveButton) const SizedBox(height: 10),
            if (_showSaveButton)
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle the save logic here
                    print('Saved: ${bionameController.text}');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
