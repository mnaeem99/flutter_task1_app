import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
    @required this.inputBorder,
    this.hint,
  }) : super(key: key);

  final OutlineInputBorder inputBorder;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(5.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: inputBorder,
          enabledBorder: inputBorder,
          focusedBorder: inputBorder,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
