import 'package:credit_card/models/credit_card.dart';
import 'package:flutter/cupertino.dart';

class CreditCardProvider extends ChangeNotifier {
  final _creditCard = CreditCard();

  CreditCard get creditCard => _creditCard;
}
