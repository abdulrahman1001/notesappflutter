part of 'notecubit_cubit.dart';

@immutable
sealed class NotecubitState {}

final class NotecubitInitial extends NotecubitState {}

class Notecubitsucceeded extends NotecubitState {}
class Notecubitdeleted extends NotecubitState {}