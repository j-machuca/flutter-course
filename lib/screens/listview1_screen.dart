import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Megaman', 'Metal Gear', "Super Smash Bros."];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 1 '),
        ),
        body: ListView(
          children: [
            ...options
                .map((e) => ListTile(
                      // leading: Icon(Icons.person),
                      title: Text(e),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ))
                .toList()

            // ListTile(
            //   // leading: Icon(Icons.person),
            //   title: Text('Hello World'),
            // )
          ],
        ));
  }
}
