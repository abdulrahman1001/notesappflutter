import 'package:flutter/material.dart';
import 'package:notes/widget/customlisttilenote.dart';

class noteslistview extends StatelessWidget {
  const noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return       Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 10,
              itemBuilder: (context,index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: customlisttilenote(),
                );
              }
            ),
          );
  }
}