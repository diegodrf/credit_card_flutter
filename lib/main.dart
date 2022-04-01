import 'package:credit_card/providers/credit_card_provider.dart';
import 'package:credit_card/screens/credit_card_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CreditCardProvider>(
      create: (context) => CreditCardProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CreditCardScreen(),
      ),
    );
  }
}
