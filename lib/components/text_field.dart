import 'package:flutter/material.dart';

class MyTextFiled extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool obscureText;
  const MyTextFiled({super.key, required this.text, required this.icon, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: const TextStyle(
          fontSize: 16,
          fontFamily: "Lemon",
          fontWeight: FontWeight.w400,
          color: Color(0x8B000000),
        ),
        prefixIcon: Icon(
          icon,
          size: 29,
          color: const Color(0xFFD5BDF5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFD5BDF5),
            width: 3
          ),
          borderRadius: BorderRadius.circular(19),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color(0xFFD5BDF5),
              width: 3
          ),
          borderRadius: BorderRadius.circular(19),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color(0xFFD5BDF5),
              width: 3
          ),
          borderRadius: BorderRadius.circular(19),
        ),
      ),
    );
  }
}
