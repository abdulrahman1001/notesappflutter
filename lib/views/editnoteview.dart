import 'package:flutter/material.dart';
import 'package:notes/cubits/cubit/notecubit_cubit.dart';
import 'package:notes/model/notesmodel.dart';
import 'package:notes/widget/custem_textfild.dart';
import 'package:notes/widget/customappbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class editnoteview extends StatefulWidget {
  editnoteview({super.key, required this.model});
  final notesmodel model;


  @override
  State<editnoteview> createState() => _editnoteviewState();
}

class _editnoteviewState extends State<editnoteview> {
    
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        autovalidateMode: autovalidateMode,
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              customappbar(
                icon: Icons.check,
                onPressed: () {
                
                  widget.model.save();
                      BlocProvider.of<NotecubitCubit>(context).fetshnotes();
            
                  Navigator.pop(context);
                },
              ),
              custemtextfild(
                text: 'title',
                maxLines: 1,
                onchange: (value) {
                
                  widget.model.title = value!;
                },
              ),
              SizedBox(
                height: 10,
              ),
              custemtextfild(
                text: 'description',
                maxLines: 6,
                onchange: (value) {
                  widget.model.description = value!;
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
