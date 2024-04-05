import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes/constatnt.dart';
import 'package:notes/model/notesmodel.dart';

part 'notecubit_state.dart';

class NotecubitCubit extends Cubit<NotecubitState> {
  NotecubitCubit() : super(NotecubitInitial());
  List<notesmodel>? notes;
  fetshnotes() {
    var notesbox = Hive.box<notesmodel>(hivenotes);
     notes = notesbox.values.toList();
    emit(Notecubitsucceeded());
  }
  deleteallnotes() {
    var notesbox = Hive.box<notesmodel>(hivenotes);
    notesbox.clear();
    // emit(Notecubitdeleted());
  }
}
