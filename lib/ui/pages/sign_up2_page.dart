import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/sign_up1_page.dart';
import 'package:makeup_me_app/ui/widgets/custom_button.dart';
import 'package:makeup_me_app/ui/widgets/custom_drop_down_button_form_field.dart';
import 'package:makeup_me_app/ui/widgets/custom_text_form_field.dart';

class SecondSignUp extends StatelessWidget {
  const SecondSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FirstSignUpPage(),
                  ),
                );
              },
              child: Container(
                width: 24,
                height: 24,
                margin: EdgeInsets.only(
                  right: 26,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/icon_back.png',
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daftar',
                  style: blackTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Temukan wajah cantikmu',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget inputSection() {
      Widget inputPhoneNumber() {
        return CustomTextFormField(
          title: 'Nomor HP',
          hintText: 'Masukkan nomor hp anda',
        );
      }

      Widget inputAlamat() {
        return CustomTextFormField(
          title: 'Alamat',
          hintText: 'Masukkan alamat lengkapmu',
        );
      }

      Widget inputNoRumah() {
        return CustomTextFormField(
          title: 'No Rumah',
          hintText: 'Masukkan nomor rumahmu',
        );
      }

      Widget inputKota() {
        return CustomDropDownButtonFormField();
      }

      Widget buttonDaftar() {
        return CustomButton(
          backgroundColor: kPrimaryColor,
          titleColor: whiteTextStyle,
          title: 'Daftar Sekarang',
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/success-sign-up', (route) => false);
          },
        );
      }

      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        ),
        margin: EdgeInsets.only(
          top: 24,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            inputPhoneNumber(),
            inputAlamat(),
            inputNoRumah(),
            inputKota(),
            buttonDaftar(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          header(),
          inputSection(),
        ],
      ),
    );
  }
}
