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
              child: Image.network(
                  'https://www.parededepapel.com.br/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/p/a/papel-de-parede.jpg',
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