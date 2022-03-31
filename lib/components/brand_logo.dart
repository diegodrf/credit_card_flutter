import 'package:flutter/material.dart';

import '../constants.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'VISA',
      style: kDefaultTextStyle.copyWith(
        fontSize: 40.0,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
