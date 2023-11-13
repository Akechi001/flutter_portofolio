import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BiodataCard extends StatelessWidget {
  final String label;
  final String value;

  const BiodataCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000, // Set a fixed width for each card
      child: Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$label:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                value,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const EditTextField({required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 500,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}