import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:version_alpha/pages/application/application_page.dart';
import 'package:version_alpha/pages/bloc_providers.dart';
import 'package:version_alpha/pages/cart/cart_model.dart';
import 'package:version_alpha/pages/cart/cart_page.dart';
import 'package:version_alpha/pages/profile/settings/settings_page.dart';
import 'pages/register/register.dart';
import 'pages/sign_in/sign_in.dart';
import 'pages/welcome/welcome.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MultiBlocProvider(
         
         providers: AppBlocProviders.allBlocProviders,
          child: ScreenUtilInit(
            
            builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                appBarTheme: const AppBarTheme(
                  elevation: 0,
                  backgroundColor: Colors.white,
                ),
              ),
              home: const ApplicationPage(),
              routes: {
                "signIn": (context) => const SignIn(),
                "register": (context) => const Register(),
                "applications": (context) => const ApplicationPage(),
                "welcome": (context) => const Welcome(),
                "settings": (context) => const SettingsPage(),            
                "cart": (context) => const CartPage(),            
        
              },
            ),
          ),
        ),
    );
  }
}
