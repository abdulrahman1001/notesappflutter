import 'package:flutter/material.dart';
import 'package:notes/cubits/cubit/notecubit_cubit.dart';
import 'package:notes/widget/customappbar.dart';
import 'package:notes/widget/customlisttilenote.dart';
import 'package:notes/widget/flotingactionbutton.dart';
import 'package:notes/widget/noteslistview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    BlocProvider.of<NotecubitCubit>(context).fetshnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const customflotingACTIONBUTTON(),
      body: Column(
        children: [
          customappbar(
            icon: Icons.search,
          ),
          const noteslistview()
        ],
      ),
    );
  }
}
