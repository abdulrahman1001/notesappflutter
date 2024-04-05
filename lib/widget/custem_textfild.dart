import 'package:flutter/material.dart';

class custemtextfild extends StatelessWidget {
  final String text;
  final int maxLines;
  final void Function(String?)? onSaved;
    final void Function(String?)? onchange;
  const custemtextfild({
    super.key, required this.text, required this.maxLines, this.onSaved, this.onchange,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:  onchange,
      onSaved:   onSaved,
      validator: (value) {
        if (value?.isEmpty??true) {
          return 'Please enter some text';
        }
        return null;
      },
      decoration: border(text),
      maxLines: maxLines,
    );
  }
}

InputDecoration border(String text) {
  return InputDecoration(
      border: OutlineInputBorder(),
      hintText: text,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green, width: 2),
      ));
}
