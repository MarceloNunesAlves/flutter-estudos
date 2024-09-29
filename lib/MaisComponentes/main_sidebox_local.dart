import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                  'assets/images/papel-de-parede.jpg',
                  fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.blue,
              height: 80,
              width: 80,
            ),
            Container(
              color: Colors.green,
              height: 40,
              width: 40,
            ),
          ],
        ),
      ),
    );
  }
}