// // import 'package:blablacar/appwrite/app/data/config/auth_config.dart';
// // import 'package:flutter/material.dart';
// // import 'package:appwrite/appwrite.dart';

// // class VehicleProvider extends ChangeNotifier {
// //   String _selectedBrand = '';
// //   String? _selectedModel;
// //   String? _selectedColor;

// //   String? get selectedBrand => _selectedBrand;
// //   String? get selectedModel => _selectedModel;
// //   String? get selectedColor => _selectedColor;
// //   // Setters

// //   void setCompany(String value) {
// //     _selectedBrand = value;
// //     notifyListeners();
// //   }

// //   void setModel(String value) {
// //     _selectedModel = value;
// //     notifyListeners();
// //   }

// //   void setColor(String value) {
// //     _selectedColor = value;
// //     notifyListeners();
// //   }

// //   // Appwrite setup
// //   final Client client = Client()
// //     ..setEndpoint(AuthConfig.projectId) // Change your Appwrite endpoint
// //     ..setProject(AuthConfig.projectId); // Replace with your Appwrite project ID

// //   final Databases databases = Databases(Client());

// //   Future<void> saveVehicleData() async {
// //     try {
// //       await databases.createDocument(
// //         databaseId: AuthConfig.databaseId, // Replace with your database ID
// //         collectionId:
// //             AuthConfig.collectionId, // Replace with your collection ID
// //         documentId: 'unique()', // Auto-generate ID
// //         data: {
// //           'company': _selectedBrand,
// //           'model': _selectedModel,
// //           'color': _selectedColor,
// //         },
// //       );
// //       print("Vehicle data saved successfully!");
// //     } catch (e) {
// //       print("Error saving vehicle data: $e");
// //     }
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:appwrite/appwrite.dart';
// import 'package:blablacar/appwrite/app/data/config/auth_config.dart';

// class VehicleProvider extends ChangeNotifier {
//   String? _selectedBrand;
//   String? _selectedModel;
//   String? _selectedColor;

//   String? get selectedBrand => _selectedBrand;
//   String? get selectedModel => _selectedModel;
//   String? get selectedColor => _selectedColor;

//   // Setters with debug print
//   void setCompany(String value) {
//     _selectedBrand = value;
//     print(" Brand Set: $_selectedBrand");
//     notifyListeners();
//   }

//   void setModel(String value) {
//     _selectedModel = value;
//     print(" Model Set: $_selectedModel");
//     notifyListeners();
//   }

//   void setColor(String value) {
//     _selectedColor = value;
//     print(" Color Set: $_selectedColor");
//     notifyListeners();
//   }

//   // Appwrite setup
//   final Client client = Client()
//     ..setEndpoint(AuthConfig.projectId) // Appwrite endpoint
//     ..setProject(AuthConfig.projectId); // Project ID

//   final Databases databases = Databases(Client());

//   Future<void> saveVehicleData() async {
//     print(
//         " Saving: Brand=$_selectedBrand, Model=$_selectedModel, Color=$_selectedColor");

//     if (_selectedBrand == null ||
//         _selectedModel == null ||
//         _selectedColor == null) {
//       print(
//           " Error: Missing data - Brand: $_selectedBrand, Model: $_selectedModel, Color: $_selectedColor");
//       return;
//     }

//     try {
//       await databases.createDocument(
//         databaseId: AuthConfig.databaseId,
//         collectionId: AuthConfig.collectionId,
//         documentId: 'unique()',
//         data: {
//           'company': _selectedBrand,
//           'model': _selectedModel,
//           'color': _selectedColor,
//         },
//       );
//       print(" Vehicle data saved successfully!");
//     } catch (e) {
//       print(" Error saving vehicle data: $e");
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import 'package:blablacar/appwrite/app/data/config/auth_config.dart';

class VehicleProvider extends ChangeNotifier {
  String? _selectedBrand;
  String? _selectedModel;
  String? _selectedColor;

  String? get selectedBrand => _selectedBrand;
  String? get selectedModel => _selectedModel;
  String? get selectedColor => _selectedColor;

  //  Setters to store selected values
  void setCompany(String value) {
    _selectedBrand = value;
    print(" Brand Set: $_selectedBrand");
    notifyListeners();
  }

  void setModel(String value) {
    _selectedModel = value;
    print(" Model Set: $_selectedModel");
    notifyListeners();
  }

  void setColor(String value) {
    _selectedColor = value;
    print(" Color Set: $_selectedColor");
    notifyListeners();
  }

  //  Appwrite setup
  final Client client = Client()
    ..setEndpoint(AuthConfig.endpoint) // Replace with your endpoint
    ..setProject(AuthConfig.projectId) // Replace with your project ID
    ..setSelfSigned(status: true);

  late final Databases databases;
  late final Account account;

  VehicleProvider() {
    databases = Databases(client);
    account = Account(client);
  }

  //  Fetch logged-in user ID
  Future<String?> getUserId() async {
    try {
      final session = await account.get();
      return session.$id;
    } catch (e) {
      print(" Error fetching user ID: $e");
      return null;
    }
  }

  //  Save vehicle data to Appwrite
  Future<void> saveVehicleData() async {
    String? userId = await getUserId(); // Fetch user ID

    if (userId == null) {
      print(" Error: User not logged in.");
      return;
    }

    print(
        " Saving for User: $userId - Brand=$_selectedBrand, Model=$_selectedModel, Color=$_selectedColor");

    if (_selectedBrand == null ||
        _selectedModel == null ||
        _selectedColor == null) {
      print(
          " Error: Missing data - Brand: $_selectedBrand, Model: $_selectedModel, Color: $_selectedColor");
      return;
    }

    try {
      await databases.createDocument(
        databaseId: AuthConfig.databaseId,
        collectionId: AuthConfig.vehicalcollectionId,
        documentId: ID.unique(),
        data: {
          'users': [userId], //  Store user ID to link data
          'brand_name': _selectedBrand,
          'model_name': _selectedModel,
          'color_name': _selectedColor,
        },
      );
      print(" Vehicle data saved successfully for user $userId!");
    } catch (e) {
      print(" Error saving vehicle data: $e");
    }
  }

  void updateVehicle(
      {required String brand, required String model, required String color}) {
    setCompany(brand);
    setModel(model);
    setColor(color);
    notifyListeners(); // Notify listeners about the changes
  }
}
