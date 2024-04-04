import 'package:flutter/material.dart';
import 'package:notes/cubits/cubit/notecubit_cubit.dart';
import 'package:notes/model/notesmodel.dart';
import 'package:notes/widget/customlisttilenote.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class noteslistview extends StatelessWidget {
  const noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotecubitCubit, NotecubitState>(
      builder: (context, state) {
        List<notesmodel>notes= BlocProvider.of<NotecubitCubit>(context).notes??[];
        return Expanded(
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length ,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: customlisttilenote(note: notes[index],),
                );
              }),
        );
      },
    );
  }
}
