import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/main_page.dart';
import 'package:makeup_me_app/ui/widgets/custom_button.dart';
import 'package:makeup_me_app/ui/widgets/custom_text_form_field.dart';

class AppRatingPage extends StatelessWidget {
  const AppRatingPage({Key? key}) : super(key: key);

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
                  'Beri Review',
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

    Widget ratingBody() {
      Widget addPicture() {
        return Container(
          width: double.infinity,
          height: 150,
          margin: EdgeInsets.only(
            bottom: 16,
          ),
          decoration: BoxDecoration(
            color: Color(0xffF6F6F6),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Add\nImage',
              style: blackTextStyle.copyWith(
                color: Color(0xff263238),
                fontSize: 14,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        );
      }

      Widget rating() {
        Widget star(final Color color) {
          return Image(
            image: AssetImage(
              'assets/icon_star.png',
            ),
            width: 21,
            height: 21,
            color: color,
          );
        }

        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 16,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Bintang',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    star(
                      Color(0xffFFC700),
                    ),
                    star(
                      Color(0xffFFC700),
                    ),
                    star(
                      Color(0xffFFC700),
                    ),
                    star(
                      Color(0xffFFC700),
                    ),
                    star(
                      Color(0xffECECEC),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }

      Widget commentInput() {
        return CustomTextFormField(
          title: 'Komentar',
          hintText: 'Tulis komentarmu disini',
        );
      }

      Widget submitComment() {
        return CustomButton(
          backgroundColor: kPrimaryColor,
          titleColor: whiteTextStyle.copyWith(
            fontWeight: medium,
          ),
          title: 'Simpan',
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
            addPicture(),
            rating(),
            commentInput(),
            submitComment(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          header(),
          ratingBody(),
        ],
      ),
    );
  }
}
