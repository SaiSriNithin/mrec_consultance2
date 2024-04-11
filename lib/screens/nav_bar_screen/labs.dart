import 'package:flutter/material.dart';

class LabsScreen extends StatelessWidget {
  const LabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laboratory'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.network(
                'https://www.veltech.edu.in/civil/images/labdetails/Concrete-Technology.jpg',
              ),
              Text("Machine Name\nTest\nQuantity\nAccuracy"),
              Image.network(
                  'https://iittp.ac.in/pics/transitcampus/Civil/EnvironmentalEngineeringLabUG/Humidity%20Chamber%20and%20Hot%20Air%20oven.jpg'),
              Text("Machine Name\nTest\nQuantity\nAccuracy"),
            ],
          ),
        ),
      ),
    );
  }
}
