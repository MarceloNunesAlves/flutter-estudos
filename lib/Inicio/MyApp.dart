import 'package:estudo/Inicio/HomePageController.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageController.new(
          child: HomePage(),
      ),
      color: Color.fromRGBO(255, 0, 0, 1),
    );
  }
}