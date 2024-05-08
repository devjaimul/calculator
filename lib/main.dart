import 'package:calculator/views/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator App',
      home: HomeScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.blue.withOpacity(0.6)),
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          contentPadding: EdgeInsets.all(15),
        )
      ),

    );
  }
}

