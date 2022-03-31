import 'package:credit_card/constants.dart';
import 'package:flutter/material.dart';

class ContactlessIcon extends StatelessWidget {
  const ContactlessIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const RotatedBox(
      quarterTurns: 1,
      child: Icon(
        Icons.wifi,
        color: kDefaultColor,
      ),
    );
  }
}
