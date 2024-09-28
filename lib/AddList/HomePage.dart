import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final names = <String>[];
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child:
                  Row(
                    children: [
                      Expanded(child: TextField(controller: controller,)),
                      IconButton(onPressed: () {
                        final textRes = controller.text;
                        setState(() {
                          names.add(textRes);
                        });
                        controller.clear();
                      }, icon: const Icon(Icons.add))
                    ],
                  ),
              ),
              Expanded(child:
                ListView.builder(
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
                ),
              ),
            ],
          )
      ),
    );
  }
}
