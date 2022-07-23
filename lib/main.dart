import 'package:flutter/material.dart';
import 'package:flutter_splash/route.dart';
import 'package:flutter_splash/screen/home.dart';
import 'package:flutter_splash/screen/login.dart';
import 'package:flutter_splash/screen/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.splash,
      routes: {
        Routes.splash: (context) => Splash(),
        Routes.login: (_) => Login(),
        Routes.home: (_) => Home(),
      },
    );
  }
}
