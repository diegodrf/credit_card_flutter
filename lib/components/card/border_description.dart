import 'package:credit_card/constants.dart';
import 'package:flutter/material.dart';

class BorderDescription extends StatelessWidget {
  final String text;
  const BorderDescription({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Text(
        text.toUpperCase(),
        style: kDefaultTextStyle.copyWith(letterSpacing: -0.4, fontSize: 6.0),
      ),
    );
  }
}
