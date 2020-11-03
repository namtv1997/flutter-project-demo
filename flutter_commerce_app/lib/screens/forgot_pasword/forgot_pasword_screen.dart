import 'package:flutter/material.dart';
import 'package:flutter_commerce_app/screens/forgot_pasword/components/body.dart';

class ForgotPassWordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}
