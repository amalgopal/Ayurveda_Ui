import 'dart:ui';

import 'package:ayurveda_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenSize.height * 0.3,
              width: screenSize.width,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/1.png'), fit: BoxFit.cover),
                  border: Border.all(width: 5)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '''Login or register to book
        your appointments''',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Email'),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter your email",
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Password'),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Enter password',
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 50,
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ScreenHome()));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  foregroundColor: Colors.white),
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Roboto'),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.25,
                    ),
                    const Text(
                      'By creating or logging into an account you are agreeing with our Terms and Conditions and Privacy Policy',
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
