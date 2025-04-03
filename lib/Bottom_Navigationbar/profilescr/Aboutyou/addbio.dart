import 'package:flutter/material.dart';

class Addbio extends StatefulWidget {
  final String? currentBio;

  const Addbio({super.key, this.currentBio});

  @override
  State<Addbio> createState() => _AddbioState();
}

class _AddbioState extends State<Addbio> {
  final TextEditingController _bioController = TextEditingController();
  bool _showSaveButton = false;
  bool _isSaving = false; //  Loading state

  @override
  void initState() {
    super.initState();
    _bioController.text = widget.currentBio ?? '';

    _bioController.addListener(() {
      setState(() {
        _showSaveButton = _bioController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _bioController.dispose();
    super.dispose();
  }

  Future<void> _saveBio() async {
    setState(() {
      _isSaving = true;
    });

    await Future.delayed(const Duration(seconds: 2)); // Simulate API call

    setState(() {
      _isSaving = false;
    });

    Navigator.pop(context, _bioController.text); //  Return bio to Editpers
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close, color: Colors.blue),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What would you like \nother members to \nknow about you?',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 40),
            TextField(
              maxLines: 5,
              minLines: 1,
              controller: _bioController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: "Example: I'm a student at Delhi University...",
                hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            if (_showSaveButton) const SizedBox(height: 50),
            if (_showSaveButton)
              Center(
                child: _isSaving
                    ? const CircularProgressIndicator() //  Show loading
                    : ElevatedButton(
                        onPressed: _saveBio,
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade800),
                        child: const Text('Save', style: TextStyle(color: Colors.white)),
                      ),
              ),
          ],
        ),
      ),
    );
  }
}
