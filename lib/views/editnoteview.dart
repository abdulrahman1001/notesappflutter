import 'package:flutter/material.dart';
import 'package:notes/widget/custem_textfild.dart';
import 'package:notes/widget/customappbar.dart';

class editnoteview extends StatefulWidget {
  const editnoteview({super.key});

  @override
  State<editnoteview> createState() => _editnoteviewState();
}

class _editnoteviewState extends State<editnoteview> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        autovalidateMode: autovalidateMode,
        key: formKey,
        child: Column(
          children: [
            customappbar(icon: Icons.check),
            custemtextfild(text: 'Title', maxLines: 1),
            SizedBox(
              height: 10,
            ),
            custemtextfild(
              text: 'descption',
              maxLines: 6,
              onSaved: (value) {
                subtitle = value;
              },
            ),
          ],
        ),
      ),
    ));
  }
}
