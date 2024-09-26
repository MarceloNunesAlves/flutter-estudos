import 'package:estudo/Inicio/HomePageController.dart';
import 'package:flutter/material.dart';
import 'DemoBottomAppBar.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            value++;
          });
          print('Click aqui');
        },
        child: const Icon(Icons.add_a_photo_sharp),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Pagina inicial! $value',
                    style: TextStyle(
                      color: Colors.red[500],
                      fontSize: 26,
                    )
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.green,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.blue,
                ),
          ])
      ),
      bottomNavigationBar: DemoBottomAppBar(),
    );;
  }
}
