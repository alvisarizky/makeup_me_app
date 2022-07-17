import 'package:flutter/material.dart';
import 'package:makeup_me_app/shared/theme.dart';

class CustomDropDownButtonFormField extends StatefulWidget {
  const CustomDropDownButtonFormField({Key? key}) : super(key: key);

  @override
  State<CustomDropDownButtonFormField> createState() => _CustomDropDownButtonFormFieldState();
}

class _CustomDropDownButtonFormFieldState extends State<CustomDropDownButtonFormField> {
  @override
  Widget build(BuildContext context) {
    String? dropdownValue;

    return Container(
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kota',
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              hintText: 'Pilih Kota',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: kBlackColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: kGreenColor,
                ),
              ),
            ),
            isExpanded: true,
            items: <String>[
              'Makassar',
              'Bone',
              'Gowa',
              'Pangkep',
              'Maros',
              'Kendari',
              'Surabaya',
              'Malang',
              'Jakarta',
              'Bandung',
              'Semarang'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            dropdownColor: kWhiteColor,
            value: dropdownValue,
            style: blackTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
