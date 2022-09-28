import 'package:flutter/material.dart';
import 'package:flavel/theme.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 50,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2.3,
                  valueColor: AlwaysStoppedAnimation(primaryTextColor),
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'Loading',
                style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
            ],
          ),
        ),
      );
  }
}