import 'package:estudo/Inicio/HomePageController.dart';
import 'package:flutter/material.dart';
import 'DemoBottomAppBar.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = HomePageController.of(context);
    final size = MediaQuery.of(context).size;
    final navegation = Navigator.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increment();
          print('Click aqui');
        },
        child: const Icon(Icons.add_a_photo_sharp),
      ),
      body: Center(
        child: Column(children: [
          Text('Pagina inicial! ${controller.value}',
              style: TextStyle(
                color: Colors.red[500],
                fontSize: 26,
              )
          ),
          Text('${size}',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              )
          ),
          Text('${navegation}',
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20,
              )
          ),
          Text('${theme}',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              )
          ),
        ])
      ),
      bottomNavigationBar: DemoBottomAppBar(),
    );
  }
}