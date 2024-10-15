import 'package:flutter/material.dart';

class ScheduleDetails extends StatefulWidget {
  @override
  _ScheduleDetailsState createState() => _ScheduleDetailsState();
}

class _ScheduleDetailsState extends State<ScheduleDetails> {
  String? selectedSize;
  final TextEditingController applianceController = TextEditingController();

  void confirmDetails() {
    if (selectedSize != null && applianceController.text.isNotEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Confirmation'),
          content: Text('Size: $selectedSize\nAppliance: ${applianceController.text}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please select a size and enter an appliance.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule Details'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Size',
                  border: OutlineInputBorder(),
                ),
                value: selectedSize,
                items: [
                  DropdownMenuItem(value: 'Small', child: Text('Small')),
                  DropdownMenuItem(value: 'Medium', child: Text('Medium')),
                  DropdownMenuItem(value: 'XL', child: Text('XL')),
                ],
                onChanged: (value) {
                  setState(() {
                    selectedSize = value;
                  });
                },
              ),
              SizedBox(height: 20),
              TextField(
                controller: applianceController,
                decoration: InputDecoration(
                  labelText: 'Appliance Type',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: confirmDetails,
                child: Text('Confirm'),
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
