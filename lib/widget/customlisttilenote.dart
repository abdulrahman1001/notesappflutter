import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/cubits/cubit/cubit/addnotecubit_cubit.dart';
import 'package:notes/cubits/cubit/notecubit_cubit.dart';
import 'package:notes/model/notesmodel.dart';
import 'package:notes/views/editnoteview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class customlisttilenote extends StatelessWidget {
  const customlisttilenote({super.key, required this.note});
  final notesmodel note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => editnoteview(model: note,)));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.orange[700],
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(fontSize: 40),
                ),
                subtitle: Text(
                  note.description,
                  style: TextStyle(fontSize: 20),
                ),
                trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotecubitCubit>(context).fetshnotes();
                    },
                    icon: Icon(FontAwesomeIcons.trash)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '',
                    style: TextStyle(color: Colors.black.withOpacity(.4)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FittedBox(
                        child: Text(
                      note.date,
                      style: TextStyle(
                          fontSize: 15, color: Colors.black.withOpacity(.4)),
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
