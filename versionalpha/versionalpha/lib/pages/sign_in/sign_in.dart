import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:version_alpha/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:version_alpha/pages/sign_in/bloc/sign_in_events.dart';
import 'package:version_alpha/pages/sign_in/bloc/sing_in_states.dart';
import 'package:version_alpha/pages/sign_in/sign_in_controller.dart';
import 'package:version_alpha/pages/sign_in/widgets/sign_in_widget.dart';

import '../common_widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInStates>(
      builder: (context, state) {
        return Container(
          color: Colors.grey.shade100,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: buildWelcomeAppBar("Sign in"),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Center(
                        
                        child: Image.asset(
                          "assets/images/logo.png",
                          width: 150.w,
                          height: 150.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.h),
                      padding: EdgeInsets.only(left: 25.w, right: 25.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          reusableText("Email"),
                          SizedBox(
                            height: 2.h,
                          ),
                          buildTextField(
                            'Enter your email address',
                            'email',
                            'user',
                            (value) {
                              context
                                  .read<SignInBloc>()
                                  .add(EmailEvents(value));
                            },
                          ),
                          reusableText("Password"),
                          SizedBox(
                            height: 2.h,
                          ),
                          buildTextField(
                            'Enter your password',
                            'password',
                            'lock',
                            (value) {
                              context
                                  .read<SignInBloc>()
                                  .add(PasswordEvents(value));
                            },
                          ),
                          forgotPassword(),
                          buildLogInAndRegbutton(
                            "Sign in",
                            1,
                            () {
                              SignInController(context: context)
                                  .handleSignIn("email"); 
                            },
                          ),
                          buildLogInAndRegbutton(
                            "Sign up ",
                            2,
                            () {
                              Navigator.of(context).pushNamed("register");
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
      },
    );
  }
}
