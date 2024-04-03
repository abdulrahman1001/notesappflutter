import 'package:flutter/material.dart';
import 'package:notes/widget/custem_textfild.dart';

class showcutommodelsheet extends StatefulWidget {
  const showcutommodelsheet({super.key});

  @override
  State<showcutommodelsheet> createState() => _showcutommodelsheetState();
}

class _showcutommodelsheetState extends State<showcutommodelsheet> {
  String? title, subtitle;
  @override
      final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              custemtextfild(text: 'Title', maxLines: 1,onSaved: (value) {
                title = value;
              },),
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
              Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      }
                      else{
                        autovalidateMode=AutovalidateMode.always;
                        setState(() {
                          
                        });
                      }
                    },
                    child: Text('Save')),
              )
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration border(String text) {
    return InputDecoration(
        border: OutlineInputBorder(),
        hintText: text,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 2),
        ));
  }
}
