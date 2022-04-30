import 'package:flutter/material.dart';
import 'package:flutter_course/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de Flutter'),
          backgroundColor: Colors.indigo,
          elevation: 5,
        ),
        body: ListView.separated(
          itemCount: 10,
          itemBuilder: (BuildContext context, index) => ListTile(
            title: const Text("Nombre de Ruta"),
            leading: const Icon(Icons.access_time_outlined),
            onTap: () {
              // final route = MaterialPageRoute(
              //   builder: (context) => const Listview1Screen(),
              // );

              // Pushes a new route to the top of the stack
              // Navigator.push(context, route);

              // Pushes new route and replaces previos route
              // Navigator.pushReplacement(context, route);

              // Pushes a named route to the top of the stack
              Navigator.pushNamed(context, "card");
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
