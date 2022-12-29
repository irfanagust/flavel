import 'dart:async';

import 'package:flavel/providers/product_provider.dart';
import 'package:flavel/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  
  getInit() async {
    await Provider.of<ProductProvider>(context, listen: false).getProducts();
    Navigator.pushNamed(context, '/sign-in');
  }

  void initState() {
    getInit();
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
