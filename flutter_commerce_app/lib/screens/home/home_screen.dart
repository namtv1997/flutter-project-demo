import 'package:flutter/material.dart';
import 'package:flutter_commerce_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }

}