import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/main_page.dart';
import 'package:makeup_me_app/ui/widgets/custom_salon_card.dart';

class ViewAllItemPage extends StatelessWidget {
  const ViewAllItemPage({Key? key}) : super(key: key);

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
                  'Populer Di Sekitarmu',
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

    Widget showAllItem() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 24,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSalonCard(
                  salonName: 'NN Salon',
                  salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
                  imgUrl: 'assets/img_mua1.png',
                ),
                CustomSalonCard(
                  salonName: 'NN Salon',
                  salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
                  imgUrl: 'assets/img_mua1.png',
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSalonCard(
                  salonName: 'NN Salon',
                  salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
                  imgUrl: 'assets/img_mua1.png',
                ),
                CustomSalonCard(
                  salonName: 'NN Salon',
                  salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
                  imgUrl: 'assets/img_mua1.png',
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSalonCard(
                  salonName: 'NN Salon',
                  salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
                  imgUrl: 'assets/img_mua1.png',
                ),
                CustomSalonCard(
                  salonName: 'NN Salon',
                  salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
                  imgUrl: 'assets/img_mua1.png',
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSalonCard(
                  salonName: 'NN Salon',
                  salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
                  imgUrl: 'assets/img_mua1.png',
                ),
                CustomSalonCard(
                  salonName: 'NN Salon',
                  salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
                  imgUrl: 'assets/img_mua1.png',
                ),
              ],
            ),
          ],
        ),
        // child: GridView.count(
        //   primary: false,
        //   scrollDirection: Axis.vertical,
        //   shrinkWrap: true,
        //   padding: EdgeInsets.symmetric(
        //     vertical: 16,
        //     horizontal: 7,
        //   ),
        //   crossAxisSpacing: 16,
        //   mainAxisSpacing: 24,
        //   crossAxisCount: 2,
        //   children: <Widget>[
        //     CustomSalonCard(
        //       salonName: 'NN Salon',
        //       salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
        //       imgUrl: 'assets/img_mua1.png',
        //     ),
        //     CustomSalonCard(
        //       salonName: 'NN Salon',
        //       salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
        //       imgUrl: 'assets/img_mua1.png',
        //     ),
        //     CustomSalonCard(
        //       salonName: 'NN Salon',
        //       salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
        //       imgUrl: 'assets/img_mua1.png',
        //     ),
        //     CustomSalonCard(
        //       salonName: 'NN Salon',
        //       salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
        //       imgUrl: 'assets/img_mua1.png',
        //     ),
        //     CustomSalonCard(
        //       salonName: 'NN Salon',
        //       salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
        //       imgUrl: 'assets/img_mua1.png',
        //     ),
        //     CustomSalonCard(
        //       salonName: 'NN Salon',
        //       salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
        //       imgUrl: 'assets/img_mua1.png',
        //     ),
        //   ],
        // ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          header(),
          showAllItem(),
        ],
      ),
    );
  }
}
