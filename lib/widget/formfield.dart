import 'package:flutter/material.dart';
import 'package:notes/cubits/cubit/cubit/addnotecubit_cubit.dart';
import 'package:notes/model/notesmodel.dart';
import 'package:notes/widget/custem_textfild.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class formfieldnote extends StatefulWidget {
  const formfieldnote({super.key});

  @override
  State<formfieldnote> createState() => _formfieldnoteState();
}

class _formfieldnoteState extends State<formfieldnote> {
  String? title, subtitle;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          custemtextfild(
            text: 'Title',
            maxLines: 1,
            onSaved: (value) {
              title = value;
            },
          ),
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
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    notesmodel note = notesmodel(
                        color: Colors.blueAccent.value,
                        title: title!,
                        description: subtitle!,
                        date: DateTime.now().toString());
                    BlocProvider.of<AddnotecubitCubit>(context).addnote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                child: Text('Save')),
          )
        ],
      ),
    );
  }
}
