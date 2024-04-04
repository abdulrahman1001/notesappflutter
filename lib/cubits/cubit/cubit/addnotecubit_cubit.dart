import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes/constatnt.dart';
import 'package:notes/model/notesmodel.dart';

part 'addnotecubit_state.dart';

class AddnotecubitCubit extends Cubit<AddnotecubitState> {
  AddnotecubitCubit() : super(AddnotecubitInitial());
  bool isloding = false;
  addnote(notesmodel note) async{

    
 
    
   emit(AddnotecubitLoading());
      isloding = true;
   try {
    var notes = Hive.box<notesmodel>(hivenotes);
  await notes.add(note);
  emit(Addnotecubitsuccess());
  isloding = false;
} on Exception catch (e) {
  emit(Addnotecubitfalire(e.toString()));
  isloding = false;
}
  }
}
