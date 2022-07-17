import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/main_page.dart';
import 'package:makeup_me_app/ui/widgets/custom_button.dart';
import 'package:makeup_me_app/ui/widgets/custom_text_form_field.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({Key? key}) : super(key: key);

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
                  'Ajukan Pertanyaan',
                  style: blackTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Tanyakan jika ada kendala',
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

    Widget questionBody() {
      Widget questionInput() {
        return CustomTextFormField(
          maxLines: 12,
          title: 'Apa Kendalamu?',
          hintText: 'Silahkan tuliskan jika ada kendalamu terkait penggunaan aplikasi ini',
        );
      }

      Widget submitQuestionButton() {
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
            questionInput(),
            SizedBox(
              height: 40,
            ),
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
          questionBody(),
        ],
      ),
    );
  }
}
