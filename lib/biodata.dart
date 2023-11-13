// search_screen.dart
import 'package:flutter/material.dart';

import 'biodata_info.dart';

class BiodataScreen extends StatefulWidget {
  @override
  State<BiodataScreen> createState() => _BiodataScreenState();
}

class _BiodataScreenState extends State<BiodataScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController religionController = TextEditingController();
  TextEditingController occupation = TextEditingController();

  @override
  void initState() {
    // Set initial values or fetch from a data source
    nameController.text = 'Enrico Kevin Ariantho';
    ageController.text = '20';
    addressController.text = 'Jl.Domba';
    genderController.text = 'Male';
    religionController.text = 'Katholik';
    occupation.text = 'Student';
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    addressController.dispose();
    genderController.dispose();
    religionController.dispose();
    occupation.dispose();
    super.dispose();
  }

  void _showEditDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Biodata'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                EditTextField(label: 'Name', controller: nameController),
                EditTextField(label: 'Gender', controller: genderController),
                EditTextField(label: 'Age', controller: ageController),
                EditTextField(label: 'Address', controller: addressController),
                EditTextField(label: 'Religion', controller: religionController),
                EditTextField(label: 'Occupation', controller: occupation),
                SizedBox(height: 16),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nameController.text = nameController.text;
                  ageController.text = ageController.text;
                  addressController.text = addressController.text;
                  genderController.text = genderController.text;
                  religionController.text = religionController.text;
                  occupation.text = occupation.text;
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                SizedBox(height: 20),
                BiodataCard(label: 'Name', value: nameController.text),
                BiodataCard(label: 'Gender', value: genderController.text),
                BiodataCard(label: 'Age', value: ageController.text),
                BiodataCard(label: 'Address', value: addressController.text),
                BiodataCard(label: 'Religion', value: religionController.text),
                BiodataCard(label: 'Occupation', value: occupation.text),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    _showEditDialog();
                  },
                  child: Text('Edit Biodata'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
