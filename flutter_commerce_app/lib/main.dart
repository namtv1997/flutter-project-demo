import 'package:flutter/material.dart';
import 'package:flutter_commerce_app/routs.dart';
import 'package:flutter_commerce_app/screens/splash/splash_screen.dart';
import 'package:flutter_commerce_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}


