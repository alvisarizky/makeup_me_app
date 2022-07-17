import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/main_page.dart';
import 'package:makeup_me_app/ui/widgets/custom_button.dart';
import 'package:makeup_me_app/ui/widgets/custom_text_form_field.dart';

class CriticismAndSuggestionPage extends StatelessWidget {
  const CriticismAndSuggestionPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        ),
        margin: EdgeInsets.only(
          bottom: 24,
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
                    builder: (context) => MainPage(),
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
                  'Kritik & Saran',
                  style: blackTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Beri Kritik Dan Saran Untuk Kami',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget criticismAndSuggestionBody() {
      Widget criticismInput() {
        return CustomTextFormField(
          maxLines: 6,
          title: 'Kritik Aplikasi',
          hintText: 'Silahkan tulis jika ada kritik untuk aplikasi kami',
        );
      }

      Widget suggestionInput() {
        return CustomTextFormField(
          maxLines: 6,
          title: 'Saran Aplikasi',
          hintText: 'Silahkan tulis jika ada saran untuk aplikasi kami',
        );
      }

      Widget importantText(){
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 24,
          ),
          child: Text(
            '*silahkan masukkan kritik dan saran mu agar kami lebih baik lagi kedepannya',
            style: blackTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
        );
      }

      Widget submitQuestionButton(){
        return CustomButton(
          backgroundColor: kPrimaryColor,
          titleColor: whiteTextStyle.copyWith(
            fontWeight: medium,
          ),
          title: 'Kirim',
          onPressed: () {},
        );
      }

      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 28,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            criticismInput(),
            suggestionInput(),
            importantText(),
            submitQuestionButton(),
          ],
        ),
      );
    }
    
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          header(),
          criticismAndSuggestionBody(),
        ],
      ),
    );
  }
}