import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/detail_page.dart';
import 'package:makeup_me_app/ui/pages/schedule_page.dart';
import 'package:makeup_me_app/ui/widgets/custom_button.dart';

class DetailPackagePage extends StatelessWidget {
  const DetailPackagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget packagePicture() {
      return Container(
        width: double.infinity,
        height: 330,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/img_paket_mua.png',
            ),
          ),
        ),
      );
    }

    Widget body() {
      Widget backButton() {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(
              left: 16,
            ),
            child: Image.asset(
              'assets/icon_back.png',
              width: 24,
              height: 24,
              color: kWhiteColor,
            ),
          ),
        );
      }

      Widget detailPackage() {
        return Container(
          width: double.infinity,
          height: 481,
          margin: EdgeInsets.only(
            top: 200,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Paket MUA',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                'Deskripsi',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Paket ini ditujukan kepada mahasiswi yang akan menghadiri acara wisuda. paket yang ditawarkan tergolong cukup murah apalagi untuk kalangan mahasiswa',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Produk Makeup',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: Text(
                  'produk makeup tulis disini',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Harga :',
                          style: greyTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: regular,
                          ),
                        ),
                        Text(
                          'IDR 289.000',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: regular,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    backgroundColor: kPrimaryColor,
                    titleColor: whiteTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                    title: 'Pilih Paket',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SchedulePage(),
                        ),
                      );
                    },
                    width: 200,
                  ),
                ],
              ),
            ],
          ),
        );
      }

      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            backButton(),
            detailPackage(),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      child: Stack(
        children: [
          packagePicture(),
          body(),
        ],
      ),
    );
  }
}
