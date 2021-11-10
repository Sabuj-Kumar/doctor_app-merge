import 'package:flutter/material.dart';

import '../palatte.dart';

class TextInput extends StatelessWidget {
  const TextInput(
      {Key key,
      @required this.icon,
      @required this.hint,
      this.inputType,
      this.inputAction,
      this.controller,
      this.obSecure = false,
      this.prefixIcon,
      this.suffixIcon})
      : super(key: key);
  final TextEditingController controller;
  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool obSecure;
  final Widget suffixIcon;
  final Widget prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: TextField(
          controller: controller,
          obscureText: obSecure,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 15.0),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Container(
                width: 10,
                color: Color(0xffD4D6D5),
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            suffixIcon: suffixIcon,
            hintStyle: TextStyle(
              color: Colors.grey[500],
            ),
          ),
          style: TextStyle(
            color: Colors.black,
          ),
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
