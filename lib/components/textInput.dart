import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput({Key? key, required this.controller, required this.hintText, required this.obscureText, required this.iconNames})
      : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData iconNames;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          enabledBorder:const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder:const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white38),
          ),
          fillColor:const Color.fromRGBO(238, 238, 238, 1),
          filled: true,
          hintText: widget.hintText,
          hintStyle:const TextStyle(
            color: Colors.grey,
          ),
          prefixIcon: Icon(
            widget.iconNames, 
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
