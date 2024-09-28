import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for(int i = 0; i < 20 ; i++)
                      Container(
                        height: 80,
                        width: double.infinity,
                        margin: const EdgeInsets.all(8),
                        color: Colors.green,
                      ),
                  ]),
          ),
      ),
    );
  }
}
