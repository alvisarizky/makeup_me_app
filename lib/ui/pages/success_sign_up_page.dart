import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/widgets/custom_button.dart';

class SuccessSignUpPage extends StatelessWidget {
  const SuccessSignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              margin: EdgeInsets.only(
                bottom: 8,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img_success_sign_up.png',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 60,
              ),
              child: Column(
                children: [
                  Text(
                    'Yeay, Pendaftaran Sukses !!',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Sekarang kamu bisa mencari\nmakeup artist di sekitarmu',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            CustomButton(
              backgroundColor: kPrimaryColor,
              titleColor: whiteTextStyle,
              title: 'Cari Makeup Artis',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/main',
                  (route) => false,
                );
              },
              width: 220,
            ),
          ],
        ),
      ),
    );
  }
}
