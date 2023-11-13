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

  @override
  void initState() {
    // Set initial values or fetch from a data source
    nameController.text = 'Your Name';
    ageController.text = 'Your Age';
    addressController.text = 'Your Address';
    genderController.text = 'Your Gender';
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    addressController.dispose();
    genderController.dispose();
    super.dispose();
  }

  void _pickImage() async {
    // Implement image picking logic here
    // You can use plugins like image_picker to allow the user to choose an image from the gallery or take a new photo.
    // Example using image_picker:
    // File image = await ImagePicker().getImage(source: ImageSource.gallery);
    // Update the profile picture with the selected image path.
    // For simplicity, let's assume the image path is stored in a variable called 'newImagePath'.
    setState(() {
      var newImagePath = 'path/to/your/new/image.jpg'; // Replace with the actual image path
    });
  }

  void _showEditDialog() {
    String newImagePath = 'assets/profile.jpg';
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
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _pickImage, // Call function to pick a new image
                  child: Text('Change Profile Picture'),
                ),
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
