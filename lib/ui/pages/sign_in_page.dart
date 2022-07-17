import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/sign_up1_page.dart';
import 'package:makeup_me_app/ui/widgets/custom_button.dart';
import 'package:makeup_me_app/ui/widgets/custom_text_form_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Masuk',
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
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email/Telepon',
          hintText: 'Masukkan email atau nomor hpmu',
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Masukkan passwordmu',
          obsecureText: true,
        );
      }

      Widget loginButton() {
        return CustomButton(
          backgroundColor: kPrimaryColor,
          titleColor: whiteTextStyle.copyWith(
            fontWeight: medium,
          ),
          title: 'Masuk',
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
          },
        );
      }

      Widget signUpButton() {
        return CustomButton(
          backgroundColor: kGreyColor,
          titleColor: whiteTextStyle.copyWith(
            fontWeight: medium,
          ),
          title: 'Buat Akun Baru',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FirstSignUpPage(),
              ),
            );
          },
        );
      }

      Widget forgotPassword() {
        return Container(
          margin: EdgeInsets.only(
            top: 130,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Lupa Password?',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Hubungi Admin',
                style: pinkTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                ),
              ),
            ],
          ),
        );
      }

      return Container(
        width: double.infinity,
        height: 600,
        padding: EdgeInsets.only(
          top: 24,
          left: 24,
          right: 24,
        ),
        margin: EdgeInsets.only(
          top: 24,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            emailInput(),
            passwordInput(),
            loginButton(),
            signUpButton(),
            forgotPassword(),
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
