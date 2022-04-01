import 'package:credit_card/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardNumber extends StatelessWidget {
  final String cardNumber;
  const CardNumber({Key? key, required this.cardNumber}) : super(key: key);

  String formatCardNumber() {
    final cardNumberAsList = cardNumber.split('');
    final cardNumberAsListWithSpaces = [];
    for (int i = 0; i < cardNumberAsList.length; i++) {
      cardNumberAsListWithSpaces.add(cardNumberAsList[i]);
      if ((i + 1) % 4 == 0) {
        cardNumberAsListWithSpaces.add(' ');
      }
    }
    return cardNumberAsListWithSpaces.join();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      formatCardNumber(),
      style: GoogleFonts.orbitron(
        textStyle:
            kDefaultTextStyle.copyWith(fontSize: 16.0, letterSpacing: 4.0),
      ),
    );
  }
}
