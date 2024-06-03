import 'dart:ui';

import 'package:ayurveda_ui/screens/login_screen.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    toLogin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/the-lalit-resort-spa (1).jpg',
                  ),
                  fit: BoxFit.cover)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Center(
              child: SizedBox(
                  height: 100,
                  child: Image.asset(
                      "assets/png-transparent-green-logo-ayurvedic-home-remedies-ayurveda-medicine-panchakarma-health-symbol-leaf-text-logo.png")),
            ),
          )),
    );
  }

  Future<void> toLogin(context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ScreenLogin()));
  }
}
