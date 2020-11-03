import 'package:flutter/material.dart';
import 'package:flutter_commerce_app/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Success"),
      ),
      body: Body(),
    );
  }

}