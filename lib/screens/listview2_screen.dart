import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    "Megaman asdfads",
    "Metal Gear Solid  ",
    "Super Smash Bros.",
    "WOW",
    "Cachaca"
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2 '),
        elevation: 5,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: options.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.indigo,
            ),
          onTap: () => {},
        ),
        
      
      ),
    );
  }
}
