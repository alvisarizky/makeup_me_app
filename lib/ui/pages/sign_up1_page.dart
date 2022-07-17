import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/sign_in_page.dart';
import 'package:makeup_me_app/ui/pages/sign_up2_page.dart';
import 'package:makeup_me_app/ui/widgets/custom_button.dart';
import 'package:makeup_me_app/ui/widgets/custom_text_form_field.dart';

class FirstSignUpPage extends StatelessWidget {
  const FirstSignUpPage({Key? key}) : super(key: key);

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
                    builder: (context) => SignInPage(),
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
      Widget addPhoto() {
        return Container(
          width: 110,
          height: 110,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(
            bottom: 16,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/icon_border.png',
              ),
            ),
          ),
          child: Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF0F0F0),
            ),
            child: Center(
              child: Text(
                'Add\nPhoto',
                style: greyTextStyle.copyWith(
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      }

      Widget nameInput() {
        return CustomTextFormField(
          title: 'Nama Lengkap',
          hintText: 'Masukkan nama lengkapmu',
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email',
          hintText: 'Masukkan emailmu',
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Buat passwordmu',
          obsecureText: true,
        );
      }

      Widget nextButton() {
        return CustomButton(
          backgroundColor: kPrimaryColor,
          titleColor: whiteTextStyle.copyWith(
            fontWeight: medium,
          ),
          title: 'Lanjutkan',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondSignUp(),
              ),
            );
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
            addPhoto(),
            nameInput(),
            emailInput(),
            passwordInput(),
            nextButton(),
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
