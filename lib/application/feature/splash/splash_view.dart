import 'package:flutter/material.dart';

class SplashPageWrapper extends StatelessWidget {
  const SplashPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlockProvider();
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/images/Lottie.gif'))),
      ),
    );
  }
}
