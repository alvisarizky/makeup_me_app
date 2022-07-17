import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makeup_me_app/cubit/transaction_category_cubit.dart';
import 'package:makeup_me_app/shared/theme.dart';

class CustomTransactionNavigationItem extends StatelessWidget {
  final String title;
  final int index;

  const CustomTransactionNavigationItem({
    Key? key,
    required this.title,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<TransactionCategoryCubit>().setOrderCategory(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: context.read<TransactionCategoryCubit>().state == index
                  ? medium
                  : regular,
              color: context.read<TransactionCategoryCubit>().state == index
                  ? kBlackColor
                  : kGreyColor,
            ),
          ),
          Container(
            width: 40,
            height: 3,
            decoration: BoxDecoration(
              color: context.read<TransactionCategoryCubit>().state == index ? kBlackColor
                  : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
