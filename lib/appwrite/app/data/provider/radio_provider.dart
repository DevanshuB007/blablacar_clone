import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RadioProvider extends ChangeNotifier {
  String? _selectedOption;
  bool _isSaving = false;
  String? _selectedMusic;
  String? _selectedSmoking;
  String? _selectedPetOption;
  IconData? _selectedIcon; // Store the selected icon

  String? get selectedOption => _selectedOption;
  String? get selectedMusic => _selectedMusic;
  String? get selectedSmoking => _selectedSmoking;
  String? get selectedPetOption => _selectedPetOption;
  IconData? get selectedIcon => _selectedIcon;

  final Map<String, IconData> chattinessIcons = {
    "I love to chat": Icons.chat_bubble_outline,
    "I'm chatty when I feel comfor-table": Icons.message_outlined,
    "I'm the quiet type": Icons.chat_bubble,
  };

  final Map<String, IconData> musicIcons = {
    "I'll am depending on the mood": Icons.music_note,
    "I love to jam": Icons.music_off,
    "I prefer silence": Icons.music_off,
  };

  final Map<String, IconData> smokingIcons = {
    "No smoking, please": Icons.smoking_rooms,
    "Cigarette breaks outside the car are ok": Icons.smoking_rooms,
    "I smoke inside the car": Icons.smoking_rooms,
  };

  final Map<String, IconData> petIcons = {
    "I'll travel with pets depending on the animal": Icons.pets,
    "I prefer no pets": Icons.pets,
    "Pets are welcome": Icons.pets,
  };

  bool get isSaving => _isSaving;

  void setSelectedOption(String? value) {
    _selectedOption = value;
    _selectedIcon = chattinessIcons[value]; // Set icon dynamically
    notifyListeners();
  }

  void setSelectedMusic(String? value) {
    _selectedMusic = value;
    _selectedIcon = musicIcons[value]; // Set icon dynamically

    notifyListeners();
  }

  void setSelectedSmoking(String? value) {
    _selectedSmoking = value;
    notifyListeners();
  }

  void setSelectedPetOption(String? value) {
    _selectedPetOption = value;
    notifyListeners();
  }

  void setIsSaving(bool value) {
    _isSaving = value;
    notifyListeners();
  }
}
