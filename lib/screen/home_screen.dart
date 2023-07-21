import 'package:electrical_store/widget/home_body.dart';
import 'package:flutter/material.dart';
import 'package:electrical_store/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Welcome To Electrial Store"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: HomeBody(),
    );
  }
}
