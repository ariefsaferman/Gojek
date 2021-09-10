import 'package:flutter/material.dart';
import 'package:gojek/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'common/MyColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryColor: MyColors.darkGreen,
      ),
      home: Home(),
    );
  }
}

