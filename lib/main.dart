import 'package:flutter/material.dart';
import 'package:teapp/views/home.dart';

//Clase main para correr la app
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TEApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Principal'),
      debugShowCheckedModeBanner: false,
    );
  }
}
