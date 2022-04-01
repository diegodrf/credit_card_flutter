import 'package:credit_card/models/credit_card.dart';
import 'package:flutter/cupertino.dart';

class CreditCardProvider extends ChangeNotifier {
  final _creditCard = CreditCard();

  CreditCard get creditCard => _creditCard;

  void setCreditCardName(String value) {
    _creditCard.name = value;
    notifyListeners();
  }

  void setCreditCardNumber(String value) {
    _creditCard.number = value;
    notifyListeners();
  }

  void setCreditCardMonth(int value) {
    _creditCard.month = value;
    notifyListeners();
  }

  void setCreditCardYear(int value) {
    _creditCard.year = value;
    notifyListeners();
  }
}
