import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:version_alpha/pages/application/bloc/app_bloc.dart';
import 'package:version_alpha/pages/home/bloc/home_page_bloc.dart';
import 'package:version_alpha/pages/register/bloc/register_bloc.dart';

import 'profile/settings/bloc/settings_bloc.dart';
import 'sign_in/bloc/sign_in_bloc.dart';
import 'welcome/bloc/welcome_blocs.dart';

class AppBlocProviders {
  static get allBlocProviders => [
    
        // BlocProvider(create: (context) => AppBlocs()),
        BlocProvider(create: (context) => WelcomeBloc()),
        BlocProvider(create: (context) => SignInBloc()),
        BlocProvider(create: (context) => RegisterBloc()),
        BlocProvider(create: (context) => AppBloc()),
        BlocProvider(create: (context) => HomePageBloc()),
        BlocProvider(create: (context) => SettingsBloc()),
      ];
}
