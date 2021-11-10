import 'package:flutter/material.dart';

import '../palatte.dart';

class SearchTextInput extends StatelessWidget {
  const SearchTextInput({
    Key key,
    @required this.icon,
    @required this.hint,
    this.inputType,
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.grey[700],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 15.0, left: 8.0),
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
                  size: 24,
                ),
              ),
            ),
            hintStyle: TextStyle(color: Colors.grey[100], fontSize: 13),
          ),
          style: TextStyle(
            color: Colors.white,
          ),
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
