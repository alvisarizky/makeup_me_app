import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makeup_me_app/cubit/mua_detail_cubit.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/main_page.dart';
import 'package:makeup_me_app/ui/widgets/custom_button.dart';
import 'package:makeup_me_app/ui/widgets/custom_nav_mua_detail_item.dart';
import 'package:makeup_me_app/ui/widgets/custom_paket_mua.dart';
import 'package:makeup_me_app/ui/widgets/custom_schedule_item.dart';
import 'package:makeup_me_app/ui/widgets/custom_testimoni_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              child: Image.asset(
                'assets/icon_back.png',
                width: 24,
                height: 24,
                color: kWhiteColor,
              ),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/icon_border.png',
                      width: 110,
                      height: 110,
                      color: kWhiteColor,
                    ),
                    Container(
                      width: 110,
                      height: 110,
                      padding: EdgeInsets.all(10),
                      child: Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/img_mua1.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'NN Salon',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'Jln. Abu Bakar Lambogo Lr.5 No.2',
                  style: whiteTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                Text(
                  '082188444797',
                  style: whiteTextStyle.copyWith(
                    fontWeight: light,
                  ),
                )
              ],
            ),
            Container(
              width: 24,
              height: 24,
            ),
          ],
        ),
      );
    }

    Widget rating() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 5,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 18,
                height: 18,
              ),
              SizedBox(
                width: 3,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 18,
                height: 18,
              ),
              SizedBox(
                width: 3,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 18,
                height: 18,
              ),
              SizedBox(
                width: 3,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 18,
                height: 18,
              ),
              SizedBox(
                width: 3,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 18,
                height: 18,
                color: Color(0xffECECEC),
              ),
            ],
          ),
          CustomButton(
            width: 160,
            backgroundColor: kWhiteColor,
            titleColor: pinkTextStyle.copyWith(
              fontWeight: medium,
            ),
            title: 'Hubungi',
            onPressed: () {},
          ),
        ],
      );
    }

    Widget detailSalon() {
      Widget buildContent(int currentIndex) {
        switch (currentIndex) {
          case 0:
            return Container(
              width: double.infinity,
              height: 362,
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomPaketMUA(
                          packageName: 'Paket Wisuda',
                          packagePrice: 'IDR 289.000',
                          imgUrl: 'assets/img_paket_mua.png',
                        ),
                        CustomPaketMUA(
                          packageName: 'Paket Wisuda',
                          packagePrice: 'IDR 300.000',
                          imgUrl: 'assets/img_paket_mua.png',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomPaketMUA(
                          packageName: 'Paket Wisuda',
                          packagePrice: 'IDR 400.000',
                          imgUrl: 'assets/img_paket_mua.png',
                        ),
                        CustomPaketMUA(
                          packageName: 'Paket Wisuda',
                          packagePrice: 'IDR 500.000',
                          imgUrl: 'assets/img_paket_mua.png',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          case 1:
            return Container(
              width: double.infinity,
              height: 362,
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomScheduleItem(
                      imgUrl: 'assets/img_paket_mua.png',
                      customerName: 'Adella dewi Cahayani',
                      package: 'Paket Wisuda',
                      date: '3 Nov, 14:00-16.00',
                      customerAddress: 'Jalan Perintis Kemerdekaan VII',
                    ),
                    CustomScheduleItem(
                      imgUrl: 'assets/img_paket_mua.png',
                      customerName: 'Adella dewi Cahayani',
                      package: 'Paket Wisuda',
                      date: '3 Nov, 14:00-16.00',
                      customerAddress: 'Jalan Perintis Kemerdekaan VII',
                    ),
                  ],
                ),
              ),
            );
          case 2:
            return Container(
              width: double.infinity,
              height: 362,
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomTestimoniItem(),
                    CustomTestimoniItem(),
                    CustomTestimoniItem(),
                  ],
                ),
              ),
            );
          default:
            return Container(
              width: double.infinity,
              height: 362,
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomPaketMUA(
                          packageName: 'Paket Wisuda',
                          packagePrice: 'IDR 289.000',
                          imgUrl: 'assets/img_paket_mua.png',
                        ),
                        CustomPaketMUA(
                          packageName: 'Paket Wisuda',
                          packagePrice: 'IDR 300.000',
                          imgUrl: 'assets/img_paket_mua.png',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomPaketMUA(
                          packageName: 'Paket Wisuda',
                          packagePrice: 'IDR 400.000',
                          imgUrl: 'assets/img_paket_mua.png',
                        ),
                        CustomPaketMUA(
                          packageName: 'Paket Wisuda',
                          packagePrice: 'IDR 500.000',
                          imgUrl: 'assets/img_paket_mua.png',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
        }
      }

      Widget detailNavigation() {
        return Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomNavMuaDetailItem(
                title: 'Paket Mua',
                index: 0,
              ),
              CustomNavMuaDetailItem(
                title: 'Jadwal',
                index: 1,
              ),
              CustomNavMuaDetailItem(
                title: 'Testimoni',
                index: 2,
              ),
            ],
          ),
        );
      }

      return BlocBuilder<MuaDetailCubit, int>(
        builder: (context, currentIndex) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 24,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 16,
            ),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              children: [
                detailNavigation(),
                Container(
                  width: double.infinity,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                  ),
                ),
                buildContent(currentIndex),
                // Container(
                //   width: double.infinity,
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 16,
                //     vertical: 20,
                //   ),
                //   child: Column(
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                //         children: [
                //           CustomPaketMUA(
                //             packageName: 'Paket Wisuda',
                //             packagePrice: 'IDR 289.000',
                //             imgUrl: 'assets/img_paket_mua.png',
                //           ),
                //           CustomPaketMUA(
                //             packageName: 'Paket Wisuda',
                //             packagePrice: 'IDR 300.000',
                //             imgUrl: 'assets/img_paket_mua.png',
                //           ),
                //         ],
                //       ),
                //       SizedBox(
                //         height: 15,
                //       ),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                //         children: [
                //           CustomPaketMUA(
                //             packageName: 'Paket Wisuda',
                //             packagePrice: 'IDR 400.000',
                //             imgUrl: 'assets/img_paket_mua.png',
                //           ),
                //           CustomPaketMUA(
                //             packageName: 'Paket Wisuda',
                //             packagePrice: 'IDR 500.000',
                //             imgUrl: 'assets/img_paket_mua.png',
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          header(),
          rating(),
          detailSalon(),
        ],
      ),
    );
  }
}
