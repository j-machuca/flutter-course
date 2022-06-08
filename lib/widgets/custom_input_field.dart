import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? lableText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.lableText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      initialValue: "",
      keyboardType: keyboardType,
      // textCapitalization: TextCapitalization.none,
      onChanged: (value) {
        // Function that recieves the value of given input to process
      },
      validator: (value) {
        // if a value is returned it means that validation has not passed
        if (value == null) return "Este campo es requerido";
        return value.length < 3 ? "Minimo de 3 caracteres" : null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        labelText: lableText,
        helperText: helperText,
        // counterText: '3 caracteres restantes',
        // prefixIcon: Icon(Icons.supervised_user_circle_sharp),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.green,

        //   ),
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10),
        //     topRight: Radius.circular(10),
        //   ),
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10),
        //     topRight: Radius.circular(10),
        //   ),
        // ),
      ),
    );
  }
}
