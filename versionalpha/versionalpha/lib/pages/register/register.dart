import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:version_alpha/pages/register/bloc/register_bloc.dart';
import 'package:version_alpha/pages/register/bloc/register_events.dart';
import 'package:version_alpha/pages/register/bloc/register_states.dart';
import 'package:version_alpha/pages/register/register_controller.dart';

import '../common_widgets.dart';
import '../sign_in/widgets/sign_in_widget.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterStates>(builder: (context, state) {
      return Container(
        color: Colors.grey.shade100,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: buildWelcomeAppBar("Sign up"),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Center(
                      child: reusableText("Enter your details below "),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15.h),
                    padding: EdgeInsets.only(left: 25.w, right: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        reusableText("Name"),
                        buildTextField(
                          'Enter your Name',
                          'name',
                          'user',
                          (value) {
                            context.read<RegisterBloc>().add(NameEvent(value));
                          },
                        ),
                        reusableText("Username"),
                        buildTextField(
                          'Enter your username',
                          'name',
                          'user',
                          (value) {
                            context.read<RegisterBloc>().add(UserNameEvent(value));
                          },
                        ),
                        reusableText("Email"),
                        buildTextField(
                          'Enter your email address',
                          'email',
                          'lock',
                          (value) {
                            context.read<RegisterBloc>().add(EmailEvent(value));
                          },
                        ),
                        reusableText("Password"),
                        buildTextField(
                          'Enter your password',
                          'password',
                          'lock',
                          (value) {
                            context
                                .read<RegisterBloc>()
                                .add(PasswordEvent(value));
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8),
                          child: reusableText(
                              "By signing up you agree on terms of use and conditions"),
                        ),
                        buildLogInAndRegbutton(
                          "Sign up ",
                          1,
                          () {
                            RegisterController(context).handleEmailRegister();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
