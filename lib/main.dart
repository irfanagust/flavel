import 'package:flavel/pages/cart_page.dart';
import 'package:flavel/pages/chat_detail_page.dart';
import 'package:flavel/pages/checkout_page.dart';
import 'package:flavel/pages/home/main_page.dart';
import 'package:flavel/pages/product_page.dart';
import 'package:flavel/pages/profile_edit_page.dart';
import 'package:flavel/pages/sign_in_page.dart';
import 'package:flavel/pages/sign_up_page.dart';
import 'package:flavel/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => const MainPage(),
        '/detail-chat': (context) => const ChatDetailPage(),
        '/edit-profile': (context) => const ProfileEditPage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
      },
    );
  }
}
