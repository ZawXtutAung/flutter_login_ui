import 'package:flutter/material.dart';
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
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/lottie_file/girl_login.json',
              ),
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
              ElevatedButton(
                  onPressed: () {}, child: const Center(child: Text('Login'))),
              const SizedBox(height: 15),
              const Text('Forget Password?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.greenAccent),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
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
              ),
              const SizedBox(height: 30),
              Text('Regester',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
            ],
          ),
        ),
      ),
    );
  }
}
