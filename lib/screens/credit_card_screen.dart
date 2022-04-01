import 'package:credit_card/components/card/credit_card_widget.dart';
import 'package:flutter/material.dart';

class CreditCardScreen extends StatelessWidget {
  static const route = 'credit_card_screen';
  const CreditCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              CreditCard(),
            ],
          ),
        ),
      ),
    );
  }
}
