import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                            label: Text('Name'), border: OutlineInputBorder()),
                      ),
                      const SizedBox(height: 15),
                      const TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            label: Text('Email'), border: OutlineInputBorder()),
                      ),
                      const SizedBox(height: 15),
                      const TextField(
                        decoration: InputDecoration(
                            label: Text('Password'),
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(height: 15),
                      const TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            label: Text('Confirm-Password'),
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 60,
                        decoration: const BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Center(
                          child: Text('Regester',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white)),
                        ),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border.all(width: 4, color: Colors.cyan),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: const Center(
                            child: Text('Login',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.cyan)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 5,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
                  child: Text('Regester'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
