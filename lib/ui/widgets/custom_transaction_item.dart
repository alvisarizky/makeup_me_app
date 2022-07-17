import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';
import 'package:makeup_me_app/ui/pages/transaction_detail_page.dart';

class CustomTransactionItem extends StatelessWidget {
  final String imgUrl;
  final String customerName;
  final String package;
  final String date;
  final String peopleAndPrice;
  final String status;
  final Color statusColor;

  const CustomTransactionItem({
    Key? key,
    required this.imgUrl,
    required this.customerName,
    required this.package,
    required this.date,
    required this.peopleAndPrice,
    required this.status,
    required this.statusColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TransactionDetailPage(),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          bottom: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imgUrl,
                  ),
                ),
              ),
            ),
            Container(
              width: 290,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    customerName,
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            package,
                            style: greyTextStyle.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Text(
                          date,
                          style: greyTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            peopleAndPrice,
                            style: greyTextStyle.copyWith(
                              fontSize: 13,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          status,
                          style: blackTextStyle.copyWith(
                            fontSize: 10,
                            color: statusColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
