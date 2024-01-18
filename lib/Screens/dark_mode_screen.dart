import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/Provider/dark_mode_class.dart';

class DarkModeScreen extends StatefulWidget {
  const DarkModeScreen({super.key});

  @override
  State<DarkModeScreen> createState() => _DarkModeScreenState();
}

class _DarkModeScreenState extends State<DarkModeScreen> {
  @override
  Widget build(BuildContext context) {
    final myProviderObject = Provider.of<DarkModeClass>(context);

    return Scaffold(
      appBar: AppBar(
        title:Text('Dark Mode Practice'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [


          RadioListTile<ThemeMode> (
            title:Text('Light Mode'),
            value: ThemeMode.light,
            groupValue: myProviderObject.getThemeMode,
            onChanged: myProviderObject.setThemeMode,
          ),

          RadioListTile<ThemeMode> (
            title:Text('Dark Mode'),
            value: ThemeMode.dark ,
            groupValue: myProviderObject.getThemeMode,
            onChanged: myProviderObject.setThemeMode,
          ),
          RadioListTile<ThemeMode> (
            title:Text('System Mode'),
            value: ThemeMode.system,
            groupValue: myProviderObject.getThemeMode,
            onChanged: myProviderObject.setThemeMode,
          ),


        ],
      )
    );
  }
}
