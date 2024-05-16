import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  var name;
  final nameController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second Secreen'),
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
