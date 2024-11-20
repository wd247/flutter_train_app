import 'package:flutter/material.dart';
import 'package:flutter_train_app/HomePage.dart';
import 'package:flutter_train_app/SeatPage.dart';
import 'package:flutter_train_app/StationListPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
