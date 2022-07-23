import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../route.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timers();
  }

  timers() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, pages);
  }

  pages() {
    Navigator.pushReplacementNamed(context, Routes.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Lottie.asset('assets/lottie_file/welcome.json'),
            ),
            const Text('WellCome!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.cyan)),
            Lottie.asset('assets/lottie_file/botton_background.json')
          ],
        ),
      ),
    );
  }
}
