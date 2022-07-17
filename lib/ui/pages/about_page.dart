import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/main_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

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
                  'Tentang',
                  style: blackTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Tentang Aplikasi makeup.me',
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

    Widget aboutAppBody() {
      Widget latestVersion() {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Versi Saat Ini',
                style: pinkTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '1.0',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        );
      }

      Widget latestUpdateDate() {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terakhir Diperbarui',
                style: pinkTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Januari 2022',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        );
      }

      Widget descriptionApp() {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deskripsi',
                style: pinkTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Makeup me adalah sebuah platform yang akan mempermudah masyarahat dalam mencari dan memesan jasa makeup artist',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        );
      }

      Widget contactPerson() {
        Widget instagramContact() {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              bottom: 8,
            ),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(
                    right: 29,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_instagram.png',
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Abdi Gunawan',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Adella Dewi Cahayani',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }

        Widget whatsappContact() {
          return Container(
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(
                    right: 29,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_whatsapp.png',
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Abdi Gunawan',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Adella Dewi Cahayani',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }

        return Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact Person',
                style: pinkTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              instagramContact(),
              whatsappContact(),
            ],
          ),
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
            latestVersion(),
            latestUpdateDate(),
            descriptionApp(),
            contactPerson(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          header(),
          aboutAppBody(),
        ],
      ),
    );
  }
}
