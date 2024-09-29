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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  var varOpacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(alignment: Alignment.center, children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/images/papel-de-parede.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(varOpacity),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (varOpacity > 0) varOpacity -= 0.1;
                      });
                      print(varOpacity);
                    },
                    icon: const Icon(Icons.remove_sharp)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (varOpacity < 1) varOpacity += 0.1;
                      });
                      print(varOpacity);
                    },
                    color: Colors.blue,
                    icon: const Icon(Icons.add)),
              ],
            ),
          ]
        )
      ]),
    ));
  }
}
