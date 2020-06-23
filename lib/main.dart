import 'package:flutter/material.dart';
import 'package:ui/screens/add_to_cart.dart';
import 'package:ui/screens/dashboardui.dart';
import 'package:ui/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashBoardUi(),
    );
  }
}
