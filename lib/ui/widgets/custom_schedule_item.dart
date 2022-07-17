import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';

class CustomScheduleItem extends StatelessWidget {
  final String imgUrl;
  final String customerName;
  final String package;
  final String date;
  final String customerAddress;

  const CustomScheduleItem({
    Key? key,
    required this.imgUrl,
    required this.customerName,
    required this.package,
    required this.date,
    required this.customerAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: 12,
      ),
      child: Row(
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
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                customerName,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              Container(
                width: 260,
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
              Text(
                customerAddress,
                style: greyTextStyle.copyWith(
                  fontSize: 11,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
