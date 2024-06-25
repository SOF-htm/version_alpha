import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:version_alpha/common/widgets/flutter_toast.dart';
import 'package:version_alpha/pages/sign_in/bloc/sign_in_bloc.dart';

class SignInController {
  final BuildContext context;
  const SignInController({required this.context});
  void handleSignIn(String type) {
    if (type == "email") {
      final state = context.read<SignInBloc>().state;
      String emailAddress = state.email;
      String password = state.password;
      if (emailAddress.isEmpty) {
        print("you need to fill email address");
        toastInfo(msg: "you need to fill email address");
        return;
      }
      if (password.isEmpty) {
        print("you need to fill password");
        toastInfo(msg: "you need to fill password address");
        return;
      }

      if (emailAddress == "hhaithem04@gmail.com") {
        if (password == "testtest") {
          print("you in ");
          toastInfo(msg: "you in");
          Navigator.of(context)
              .pushNamedAndRemoveUntil("applications", (route) => false);
        } else {
          print("wrong password");
          toastInfo(msg: "wrong password");
          return;
        }
        return;
      } else {
        Navigator.of(context).pushNamed("register");
      }
    }
  }
}
// on FirebaseAuthException catch (e) {
//           if (e.code == 'user-not-found') {
//             toastInfo(msg: "no user found for that email");
//             return;
//           } else if (e.code == 'wrong password') {
//             toastInfo(msg: "wrong password");
//             return;
//           } else if (e.code == 'invalid-email') {
//             toastInfo(msg: "your email is not a valid email");
//             return;
//           }
//         }