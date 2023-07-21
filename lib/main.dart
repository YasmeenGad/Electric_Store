import 'package:electrical_store/screen/home_screen.dart';
import 'package:electrical_store/widget/details_screen/details_screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeScreen(),
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kPrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          "detailScreen": (context) => DettailScreen(),
        });
  }
}
