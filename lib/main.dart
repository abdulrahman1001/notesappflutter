import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constatnt.dart';
import 'package:notes/views/home.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(hivenotes);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const homepage(),
    );
  }
}