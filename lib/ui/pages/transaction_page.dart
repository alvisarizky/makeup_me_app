import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makeup_me_app/cubit/transaction_category_cubit.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/widgets/custom_button.dart';
import 'package:makeup_me_app/ui/widgets/custom_transaction_item.dart';
import 'package:makeup_me_app/ui/widgets/custom_transaction_navigation_item.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget transactionIsNotEmpty() {
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Riwayat Booking',
                    style: blackTextStyle.copyWith(
                      fontSize: 22,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Riwayat booking kakak akan muncul disini',
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

      Widget transactionBody() {
        Widget transactionNavigation() {
          return Container(
            width: double.infinity,
            height: 36,
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              children: [
                CustomTransactionNavigationItem(
                  title: 'In Progress',
                  index: 0,
                ),
                SizedBox(
                  width: 28,
                ),
                CustomTransactionNavigationItem(
                  title: 'Past Orders',
                  index: 1,
                ),
              ],
            ),
          );
        }

        Widget transactionItemBody(int currentIndex) {
          switch (currentIndex) {
            case 0:
              return Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: 16,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  children: [
                    CustomTransactionItem(
                      imgUrl: 'assets/img_paket_mua.png',
                      customerName: 'Adella dewi Cahayani',
                      package: 'Paket Wisuda',
                      date: '3 Nov, 14:00-16.00',
                      peopleAndPrice: '14 Orang • RP. 4. 000.000',
                      status: 'Belum Dikonfirmasi',
                      statusColor: kYellowColor,
                    ),
                    CustomTransactionItem(
                      imgUrl: 'assets/img_paket_mua.png',
                      customerName: 'Adella dewi Cahayani',
                      package: 'Paket Wisuda',
                      date: '3 Nov, 14:00-16.00',
                      peopleAndPrice: '14 Orang • RP. 4. 000.000',
                      status: 'Dikonfirmasi',
                      statusColor: kGreenColor,
                    ),
                  ],
                ),
              );
            case 1:
              return Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: 16,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  children: [
                    CustomTransactionItem(
                      imgUrl: 'assets/img_paket_mua.png',
                      customerName: 'Adella dewi Cahayani',
                      package: 'Paket Wisuda',
                      date: '3 Nov, 14:00-16.00',
                      peopleAndPrice: '14 Orang • RP. 4. 000.000',
                      status: 'Dibatalkan',
                      statusColor: kRedColor,
                    ),
                    CustomTransactionItem(
                      imgUrl: 'assets/img_paket_mua.png',
                      customerName: 'Adella dewi Cahayani',
                      package: 'Paket Wisuda',
                      date: '3 Nov, 14:00-16.00',
                      peopleAndPrice: '14 Orang • RP. 4. 000.000',
                      status: 'Selesai',
                      statusColor: kGreenColor,
                    ),
                  ],
                ),
              );
            default:
              return Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: 16,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  children: [],
                ),
              );
          }
        }

        return BlocBuilder<TransactionCategoryCubit, int>(
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
              ),
              child: Column(
                children: [
                  transactionNavigation(),
                  Container(
                    width: double.infinity,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                    ),
                  ),
                  transactionItemBody(currentIndex)
                ],
              ),
            );
          },
        );
      }

      return Column(
        children: [
          header(),
          transactionBody(),
        ],
      );
    }

    Widget transactionIsEmpty() {
      Widget muaSearchButton() {
        return CustomButton(
          backgroundColor: kPrimaryColor,
          titleColor: whiteTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
          title: 'Cari MUA',
          onPressed: () {},
          width: 200,
        );
      }

      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              margin: EdgeInsets.only(
                bottom: 16,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img_empty_order.png',
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 60,
              ),
              margin: EdgeInsets.only(
                bottom: 20,
              ),
              child: Column(
                children: [
                  Text(
                    'Pesananmu Kosong',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Sepertinya kamu belum pernah memesan apapun disini',
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            muaSearchButton(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: transactionIsNotEmpty(),
    );
  }
}
