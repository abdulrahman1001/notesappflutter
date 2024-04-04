import 'package:flutter/material.dart';
import 'package:notes/cubits/cubit/cubit/addnotecubit_cubit.dart';
import 'package:notes/widget/custem_textfild.dart';
import 'package:notes/widget/formfield.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class showcutommodelsheet extends StatefulWidget {
  const showcutommodelsheet({super.key});

  @override
  State<showcutommodelsheet> createState() => _showcutommodelsheetState();
}

class _showcutommodelsheetState extends State<showcutommodelsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: BlocConsumer<AddnotecubitCubit, AddnotecubitState>(
        listener: (context, state) {
          if (state is Addnotecubitfalire) {
            print(state.errorMessage);
          }
          if (state is Addnotecubitsuccess) {
            print('hi222');
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddnotecubitLoading ? true : false,
              child: Padding(
                padding:  EdgeInsets.only(
                    top: 16,
                    left: 16,
                    right: 16,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SingleChildScrollView(child: formfieldnote()),
              ));
        },
      ),
    );
  }
}
