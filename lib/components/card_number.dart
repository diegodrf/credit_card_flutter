import 'package:credit_card/constants.dart';
import 'package:flutter/material.dart';

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
      style: kDefaultTextStyle.copyWith(fontSize: 20.0, letterSpacing: 5.0),
    );
  }
}
