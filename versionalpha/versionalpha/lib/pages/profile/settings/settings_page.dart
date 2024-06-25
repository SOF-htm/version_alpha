import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:version_alpha/pages/profile/settings/bloc/settings_bloc.dart';
import 'package:version_alpha/pages/profile/settings/bloc/settings_states.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: BlocBuilder<SettingsBloc, SettingsStates>(
            builder: (context, state) {
          return Container(
            child: const Column(
              children: [
                Text(
                  "hello",
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
