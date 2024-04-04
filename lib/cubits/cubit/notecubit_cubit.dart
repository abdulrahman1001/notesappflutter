import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'notecubit_state.dart';

class NotecubitCubit extends Cubit<NotecubitState> {
  NotecubitCubit() : super(NotecubitInitial());
}
