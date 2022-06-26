import 'package:flavel/theme.dart';
import 'package:flutter/material.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Wish List Page',
        style: primaryTextStyle,
      ),
    );
  }
}
