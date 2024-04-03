import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/views/editnoteview.dart';

class customlisttilenote extends StatelessWidget {
  const customlisttilenote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => editnoteview()));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.orange[700],
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Title",
                  style: TextStyle(fontSize: 40),
                ),
                subtitle: Text(
                  "Title222",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: IconButton(
                    onPressed: () {}, icon: Icon(FontAwesomeIcons.trash)),
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
                      '21may',
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
