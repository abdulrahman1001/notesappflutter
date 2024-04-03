import 'package:flutter/material.dart';
import 'package:notes/widget/customappbar.dart';
import 'package:notes/widget/customlisttilenote.dart';
import 'package:notes/widget/flotingactionbutton.dart';
import 'package:notes/widget/noteslistview.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:const customflotingACTIONBUTTON(),
      body: Column(
        children: [
          customappbar(icon: Icons.search,),
    const noteslistview()
        ],
      ),
    );
  }
}