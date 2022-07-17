import 'dart:async';

import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/first',
        (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Text(
          'MakeUp.Me',
          style: whiteTextLogo.copyWith(
            fontSize: 48,
          ),
        ),
      ),
    );
  }
}
