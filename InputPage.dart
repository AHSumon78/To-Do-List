import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  final nameController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add your task'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            controller: nameController,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, nameController.text);
              },
              child: Icon(Icons.check)),
        ],
      ),
    );
  }
}
