import 'package:credit_card/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ValidityDate extends StatelessWidget {
  final int month;
  final int year;
  const ValidityDate({Key? key, required this.month, required this.year})
      : super(key: key);

  String formatMonth() {
    return month.toString().padLeft(2, '0');
  }

  String formatYear() {
    if (year > 99) {
      final yearAsString = year.toString();
      return yearAsString.substring(yearAsString.length - 2).padLeft(2, '0');
    }
    return year.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Valid\nThru',
          style: GoogleFonts.orbitron(
            textStyle: kDefaultTextStyle.copyWith(
                fontWeight: FontWeight.normal, fontSize: 8.0),
          ),
        ),
        const SizedBox(width: 4.0),
        Text(
          '${formatMonth()}/${formatYear()}',
          style: GoogleFonts.orbitron(
            textStyle: kDefaultTextStyle.copyWith(fontSize: 16.0),
          ),
        )
      ],
    );
  }
}
