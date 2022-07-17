import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/widgets/custom_button.dart';

class SuccessCheckOutPage extends StatelessWidget {
  const SuccessCheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget homeButton() {
      return CustomButton(
        backgroundColor: kPrimaryColor,
        titleColor: whiteTextStyle.copyWith(
          fontWeight: medium,
          fontSize: 14,
        ),
        title: 'Kembali Ke Beranda',
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/main',
            (route) => false,
          );
        },
        width: 200,
      );
    }

    Widget transactionButton() {
      return CustomButton(
        backgroundColor: kGreyColor,
        titleColor: whiteTextStyle.copyWith(
          fontWeight: medium,
          fontSize: 14,
        ),
        title: 'Lihat Pesananku',
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/main',
            (route) => false,
          );
        },
        width: 200,
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(
                bottom: 24,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img_success_check_out.png',
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 36,
              ),
              child: Column(
                children: [
                  Text(
                    'Pesanan Di Proses',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Yeahh, Dikit Lagi nih Pesanan kakak sedang di konfirmasi Tunggu info selanjutnya yah dari mua nya',
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            homeButton(),
            transactionButton(),
          ],
        ),
      ),
    );
  }
}
