import 'package:credit_card/components/card/bank_logo.dart';
import 'package:credit_card/components/card/border_description.dart';
import 'package:credit_card/components/card/brand_logo.dart';
import 'package:credit_card/components/card/card_base.dart';
import 'package:credit_card/components/card/card_decoration.dart';
import 'package:credit_card/components/card/card_number.dart';
import 'package:credit_card/components/card/chip.dart';
import 'package:credit_card/components/card/client_name.dart';
import 'package:credit_card/components/card/contactless_icon.dart';
import 'package:credit_card/components/card/validity_date.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardBase(
                cardContent: Stack(
                  children: [
                    const CardDecoration(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 40.0,
                        right: 24.0,
                        top: 32.0,
                        bottom: 24.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [BankLogo()],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      CardChip(),
                                      SizedBox(width: 8.0),
                                      ContactlessIcon(),
                                    ],
                                  ),
                                  const SizedBox(height: 8.0),
                                  const CardNumber(
                                      cardNumber: '1234567891017788'),
                                ],
                              ),
                              const BorderDescription(
                                  text: 'Utilizar função crédito')
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  ValidityDate(month: 12, year: 2023),
                                  SizedBox(height: 8.0),
                                  ClientName(name: 'joao S Silva')
                                ],
                              ),
                              const SizedBox(width: 16.0),
                              const BrandLogo()
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
