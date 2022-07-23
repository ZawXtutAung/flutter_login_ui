import 'package:flutter/material.dart';
import 'package:flutter_splash/route.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            Lottie.asset(
              'assets/lottie_file/girl_login.json',
            ),
            const SizedBox(height: 15),
            Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: inputUi()),
                const Positioned(
                    top: 0,
                    left: 0,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(50, 6, 50, 6),
                        child: Text('Login',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.cyan)),
                      ),
                    ))
              ],
            ),
            const SizedBox(height: 5),
            const Center(
              child: Text('Forget Password?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            const SizedBox(height: 30),
            socialIcons(),
            const SizedBox(height: 30),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.register);
                },
                child: const Text('Regester',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget inputUi() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(height: 15),
            const TextField(
              decoration: InputDecoration(
                  label: Text('Email'), border: OutlineInputBorder()),
            ),
            const SizedBox(height: 15),
            const TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  label: Text('Password'), border: OutlineInputBorder()),
            ),
            const SizedBox(height: 15),
            Container(
              height: 60,
              decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Center(
                child: Text('Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white)),
              ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }

  Widget socialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.greenAccent),
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          height: 50,
          width: 80,
          child: const Center(
            child: FaIcon(
              FontAwesomeIcons.google,
              color: Colors.blue,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.blue),
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          height: 50,
          width: 80,
          child: const Center(
            child: FaIcon(
              FontAwesomeIcons.facebook,
              color: Colors.blueAccent,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black26),
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          height: 50,
          width: 80,
          child: const Center(
            child: FaIcon(
              FontAwesomeIcons.appleAlt,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
