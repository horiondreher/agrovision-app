import 'package:agrovision_app/constants.dart';
import 'package:flutter/material.dart';

import 'package:agrovision_app/Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Agrovision',
            theme: ThemeData(
                primaryColor: kPrimaryColor,
                scaffoldBackgroundColor: Colors.white,
            ),
            home: WelcomeScreen(),
        );
    }
}
