// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/message_screen.dart';
import 'providers/app_state.dart'; // Sesuaikan path jika berbeda

// Entry point of the application
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wireframe App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/messages': (context) => MessageScreen(), // Tambahkan layar MessageScreen
        },
      ),
    );
  }
}
