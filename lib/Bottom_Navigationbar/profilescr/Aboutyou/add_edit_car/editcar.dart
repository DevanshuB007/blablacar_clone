import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/add_edit_car/deletecar.dart';
import 'package:blablacar/Bottom_Navigationbar/profilescr/Aboutyou/add_edit_car/vehicalpro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Editcar extends StatefulWidget {
  const Editcar({super.key});

  @override
  State<Editcar> createState() => _EditcarState();
}

class _EditcarState extends State<Editcar> {
  @override
  Widget build(BuildContext context) {
    final vehicleProvider = Provider.of<VehicleProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
          icon: const Icon(
            Icons.close,
            color: Colors.blue,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              title: Text(vehicleProvider.selectedBrand ?? 'TOYOTA'),
              subtitle: Text(vehicleProvider.selectedColor ?? 'Red'),
            ),
            ListTile(
              title: Text(
                'Edit info',
                style: TextStyle(color: Colors.cyan),
              ),
              onTap: () {
                // Navigate to the edit screen
              },
            ),
            Divider(
              indent: 16,
            ),
            ListTile(
              title: const Text(
                'Delete Vehicle',
                style: TextStyle(color: Colors.cyan),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Deletecar()));
                // Navigate to the edit screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
