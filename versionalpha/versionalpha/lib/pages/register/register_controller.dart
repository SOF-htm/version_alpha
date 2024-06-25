import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:version_alpha/common/widgets/flutter_toast.dart';
import 'package:version_alpha/pages/register/bloc/register_bloc.dart';

class RegisterController {
  final BuildContext context;
  const RegisterController(this.context);

  void handleEmailRegister() {
    final state = context.read<RegisterBloc>().state;

    String name = state.name;
    String userName = state.userName;
    String email = state.email;
    String password = state.password;
    int index = 0;
    if (name.isEmpty) {
      index++;
      toastInfo(msg: "name can not be empty");
      return;
    }
    if (userName.isEmpty) {
      index++;
      toastInfo(msg: "user name can not be empty");
      return;
    }
    if (email.isEmpty) {
      index++;
      toastInfo(msg: "email can not be empty");
      return;
    }
    if (password.isEmpty) {
      index++;
      toastInfo(msg: "password can not be empty");
      return;
    }
    if (index == 0) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil("applications", (route) => false);
      toastInfo(msg: "you'r in");
    }
  }
}
