import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constatnt.dart';
import 'package:notes/cubits/cubit/cubit/addnotecubit_cubit.dart';
import 'package:notes/cubits/cubit/notecubit_cubit.dart';
import 'package:notes/model/notesmodel.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/simpleblocoobsever.dart';
import 'package:notes/views/home.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = MyBlocObserver();
  Hive.registerAdapter(notesmodelAdapter());
  await Hive.openBox<notesmodel>(hivenotes);
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddnotecubitCubit()),
        BlocProvider(create: (context) => NotecubitCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const homepage(),
      ),
    );
  }
}
