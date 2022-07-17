import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/view_all_item_page.dart';
import 'package:makeup_me_app/ui/widgets/custom_salon_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerImage() {
      return Container(
        width: double.infinity,
        height: 285,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/img_header.png',
            ),
          ),
        ),
      );
    }

    Widget content() {
      Widget searchField() {
        return Container(
          margin: EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
          ),
          child: TextFormField(
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: 'Cari Makeup Artis',
              hintStyle: whiteTextStyle.copyWith(
                color: Color(0xffE6C5C9),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 20,
                  end: 9,
                ),
                child: Icon(
                  Icons.search_rounded,
                  color: Color(0xffE6C5C9),
                ),
              ),
              filled: true,
              fillColor: Color(0xffC16F77),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide(
                  color: Color(0xffE6C5C9),
                ),
              ),
            ),
          ),
        );
      }

      Widget itemView() {
        Widget popularItems() {
          return Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Populer Disekitarmu',
                      style: blackTextStyle.copyWith(
                        color: Color(0xff082431),
                        fontWeight: semiBold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewAllItemPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Lihat Semua',
                        style: pinkTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomSalonCard(
                        salonName: 'NN Salon',
                        salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
                        imgUrl: 'assets/img_mua1.png',
                        margin: const EdgeInsets.only(
                          left: 4,
                          right: 16,
                          bottom: 10
                        ),
                      ),
                      CustomSalonCard(
                        salonName: 'NN Salon',
                        salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
                        imgUrl: 'assets/img_mua1.png',
                        margin: EdgeInsets.only(
                          left: 4,
                          right: 16,
                          bottom: 10
                        ),
                      ),
                      CustomSalonCard(
                        salonName: 'NN Salon',
                        salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
                        imgUrl: 'assets/img_mua1.png',
                        margin: EdgeInsets.only(
                          left: 4,
                          right: 16,
                          bottom: 10
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }

        Widget latestItems() {
          return Container(
            margin: EdgeInsets.only(
              top: 16,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Terbaru Disekitarmu',
                      style: blackTextStyle.copyWith(
                        color: Color(0xff082431),
                        fontWeight: semiBold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewAllItemPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Lihat Semua',
                        style: pinkTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomSalonCard(
                        salonName: 'NN Salon',
                        salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
                        imgUrl: 'assets/img_mua1.png',
                        margin: EdgeInsets.only(
                          left: 4,
                          right: 16,
                          bottom: 10
                        ),
                      ),
                      CustomSalonCard(
                        salonName: 'NN Salon',
                        salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
                        imgUrl: 'assets/img_mua1.png',
                        margin: EdgeInsets.only(
                          left: 4,
                          right: 16,
                          bottom: 10
                        ),
                      ),
                      CustomSalonCard(
                        salonName: 'NN Salon',
                        salonAddress: 'Jln. Abu bakar Lambogo Lr.5 No.12',
                        imgUrl: 'assets/img_mua1.png',
                        margin: EdgeInsets.only(
                          left: 4,
                          right: 16,
                          bottom: 10
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }

        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            top: 30,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 24,
          ),
          decoration: BoxDecoration(
            color: Color(0xffF2F4F2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
          ),
          child: Column(
            children: [
              popularItems(),
              latestItems(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        );
      }

      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 25,
              ),
              child: Column(
                children: [
                  Text(
                    'Makeup.Me',
                    style: whiteTextLogo.copyWith(
                      fontSize: 36,
                    ),
                  ),
                  Text(
                    'Mulai Mencari MUA yang Cocok\nDengan Seleramu !',
                    style: whiteTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            searchField(),
            itemView(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            headerImage(),
            content(),
          ],
        ),
      ),
    );
  }
}
