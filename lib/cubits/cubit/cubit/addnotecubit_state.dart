part of 'addnotecubit_cubit.dart';

class AddnotecubitState {}

 class AddnotecubitInitial extends AddnotecubitState {}

 class AddnotecubitLoading extends AddnotecubitState {}

class Addnotecubitfalire extends AddnotecubitState {
  final String errorMessage;

  Addnotecubitfalire(this.errorMessage);
}

class Addnotecubitsuccess extends AddnotecubitState {}
