import 'package:flutter/material.dart';

import '../constants.dart';

class ClientName extends StatelessWidget {
  final String name;
  const ClientName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name.toUpperCase(),
      style: kDefaultTextStyle.copyWith(letterSpacing: 4.0),
    );
  }
}
