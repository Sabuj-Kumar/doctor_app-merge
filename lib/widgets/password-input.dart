import 'package:flutter/material.dart';

import '../palatte.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key key,
    @required this.icon,
    @required this.hint,
    this.inputAction,
    this.controller,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputAction inputAction;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 15),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Container(
                width: 50,
                color: Color(0xffDDDFDE),
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            hintStyle: TextStyle(
              color: Colors.grey[500],
            ),
          ),
          obscureText: true,
          style: TextStyle(
            color: Colors.black,
          ),
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
