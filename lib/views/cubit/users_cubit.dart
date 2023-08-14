import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/user_model.dart';
import 'package:flutter_application_4/service/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit() : super(UsersInitial()) {
    getMyUsers();
  }

  List<UserModel> users = [];
  getMyUsers() async {
    try {
      emit(UsersLoading());
      users = await UserService().getUsers();
      emit(UsersSuccess());
    } catch (e) {
      emit(UsersError());
    }
  }
}
