import 'package:flutter/material.dart';
import 'package:keytrack/ui/details_screen.dart';
import 'package:keytrack/ui/main_screen.dart';
import 'package:keytrack/ui/registration_screen.dart';

class Keytrack extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keytrack',
      debugShowCheckedModeBanner: false,
      initialRoute: RegistrationScreen.id,
      routes: {
        RegistrationScreen.id: (context) => RegistrationScreen(),
        MainScreen.id: (context) => MainScreen(),
        DetailsScreen.id: (context) => DetailsScreen()
      },
    );
  }
}