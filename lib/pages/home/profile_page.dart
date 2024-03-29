import 'package:flavel/models/user_model.dart';
import 'package:flavel/providers/auth_provider.dart';
import 'package:flavel/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Widget appBar() {
      return AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: bgColor1,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: 54,
                  height: 54,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        user.profilePhotoUrl,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, ${user.name}',
                        style: primaryTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        '@${user.username}',
                        style: subtitleTextStyle.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/sign-in',
                      (route) => false,
                    );
                  },
                  child: Image.asset(
                    'assets/button_exit.png',
                    width: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget menuItem(String text) {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondaryTextStyle.copyWith(fontSize: 13),
            ),
            Icon(
              Icons.chevron_right,
              color: primaryTextColor,
            ),
          ],
        ),
      );
    }

    Widget menuHeaderItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Text(
          text,
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: bgColor3,
          ),
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              menuHeaderItem('Account'),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
                child: menuItem('Edit Profile'),
              ),
              menuItem('Your Orders'),
              menuItem('Help'),
              menuHeaderItem('General'),
              menuItem('Privacy & Policy'),
              menuItem('Term of Service'),
              menuItem('Rate App')
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        appBar(),
        content(),
      ],
    );
  }
}
