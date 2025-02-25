import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: "Full Name")),
            TextField(decoration: InputDecoration(labelText: "Enter Email")),
            TextField(decoration: InputDecoration(labelText: "Password"), obscureText: true),
            TextField(decoration: InputDecoration(labelText: "Confirm Password"), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}