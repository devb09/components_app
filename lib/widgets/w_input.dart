import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? icon;
  final IconData? sufixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final String fomrProperty;
  final Map<String, String> fomrValues;

  const CustomInputField({
    Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.icon,
    this.sufixIcon,
    required this.keyboardType,
    this.obscureText = false,
    required this.fomrProperty,
    required this.fomrValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      // autofocus: true,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        // print(value);
        fomrValues[fomrProperty] = value;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null) return 'valor requerido';
        return value.length < 3 ? 'Mínimo tres caracteres' : null;
      },
      decoration: InputDecoration(
        labelText: labelText,
        helperText: helperText,
        hintText: hintText,
        counter: Text('3 caracteres'),
        icon: icon == null ? null : Icon(icon),
        prefixIcon: Icon(Icons.person),
        suffixIcon: sufixIcon == null ? null : Icon(sufixIcon),
        // focusedBorder: OutlineInputBorder(
        //     // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
        //     borderSide: BorderSide(color: Colors.green)),
        // border: OutlineInputBorder(
        //     borderRadius:
        //         BorderRadius.only(bottomLeft: Radius.circular(10)))
      ),
    );
  }
}
