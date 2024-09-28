import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final names = ['Marcelo', 'Marilia', 'Adriana', 'Rosa', 'Edezio', 'Luigi', 'Leticia', 'Edegar', 'Floripa', 'João Miguel'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              final name = names[index];
              return ListTile(
                title: Container(
                  child: Text(name),
                  height: 80,
                  width: double.infinity,
                  margin: const EdgeInsets.all(8),
                  color: Colors.green,
                ),
              );
            },
          )
      ),
    );
  }
}
