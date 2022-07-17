import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/check_out_page.dart';
import 'package:makeup_me_app/ui/pages/detail_package_page.dart';
import 'package:makeup_me_app/ui/widgets/custom_button.dart';
import 'package:makeup_me_app/ui/widgets/custom_text_form_field.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPackagePage(),
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
                  'Sesuaikan',
                  style: blackTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Sesuaiin jadwal acaramu',
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

    Widget body() {
      Widget inputDate() {
        return CustomTextFormField(
          title: 'Tanggal Acara',
          hintText: 'Kapan acaramu berlangsung?',
        );
      }

      Widget inputTime() {
        return CustomTextFormField(
          title: 'Jam Acara',
          hintText: 'Jam berapa acaramu?',
        );
      }

      Widget inputQuantity() {
        return CustomTextFormField(
          title: 'Jumlah',
          hintText: 'Berapa orang yang akan dimakeup?',
        );
      }

      Widget inputNote() {
        return CustomTextFormField(
          title: 'Catatan',
          hintText: 'Silahkan tulis jika ada catatan tambahan?',
        );
      }

      Widget note() {
        return Text(
          '*silahkan isi jadwal acaramu agar mua lebih mudah atur jadwal denganmu',
          style: blackTextStyle.copyWith(
            fontWeight: regular,
            fontSize: 14,
          ),
        );
      }

      Widget checkOutButton() {
        return CustomButton(
          backgroundColor: kPrimaryColor,
          titleColor: whiteTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
          title: 'Selanjutnya',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CheckOutPage(),
              ),
            );
          },
        );
      }

      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 24),
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: Column(
          children: [
            inputDate(),
            inputTime(),
            inputQuantity(),
            inputNote(),
            note(),
            SizedBox(
              height: 48,
            ),
            checkOutButton(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          header(),
          body(),
        ],
      ),
    );
  }
}
