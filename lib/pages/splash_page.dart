import 'dart:async';

import 'package:flavel/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/sign-in'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 150,
        width: 130,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_splash.png'),
          ),
        ),
      )),
      backgroundColor: bgColor1,
    );
  }
}
