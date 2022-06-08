import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomInputField(
                lableText: "Nombre",
                hintText: "Nombre del Usuario",
              ),
              SizedBox(height: 30),
              CustomInputField(
                lableText: "Apellido",
                hintText: "Apellido del Usuario",
              ),
              SizedBox(height: 30),
              CustomInputField(
                lableText: "Correo",
                hintText: "Correo del Usuario",
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30),
              CustomInputField(
                lableText: "Password",
                hintText: "Password del Usuario",
                obscured: true,
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
