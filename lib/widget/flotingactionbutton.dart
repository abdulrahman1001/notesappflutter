import 'package:flutter/material.dart';
import 'package:notes/widget/showmodelbottomsheet.dart';

class customflotingACTIONBUTTON extends StatelessWidget {
  const customflotingACTIONBUTTON({super.key});

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(onPressed: (){
      showModalBottomSheet(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),context: context, builder: (context){
        return showcutommodelsheet();
      });
    },child: Icon(Icons.add),shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(360)),
      ),);
  }
}