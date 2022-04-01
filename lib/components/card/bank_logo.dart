import 'package:credit_card/constants.dart';
import 'package:flutter/material.dart';

class BankLogo extends StatelessWidget {
  const BankLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize = 18.0;
    return Row(
      children: [
        const Icon(
          Icons.rocket_launch,
          color: kDefaultColor,
          size: fontSize,
        ),
        Text('MyBank', style: kDefaultTextStyle.copyWith(fontSize: fontSize))
      ],
    );
  }
}
