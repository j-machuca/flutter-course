import 'package:flutter/material.dart';
import 'package:flutter_course/router/app_routes.dart';
import 'package:flutter_course/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de Flutter'),
        ),
        body: ListView.separated(
          itemCount: menuOptions.length,
          itemBuilder: (BuildContext context, index) => ListTile(
            title: Text(menuOptions[index].name),
            leading: Icon(
              menuOptions[index].icon,
              color: AppTheme.primaryColor,
            ),
            onTap: () {
              // final route = MaterialPageRoute(
              //   builder: (context) => const Listview1Screen(),
              // );

              // Pushes a new route to the top of the stack
              // Navigator.push(context, route);

              // Pushes new route and replaces previos route
              // Navigator.pushReplacement(context, route);

              // Pushes a named route to the top of the stack
              Navigator.pushNamed(context, menuOptions[index].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
