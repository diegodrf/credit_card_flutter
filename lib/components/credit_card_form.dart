import 'package:credit_card/constants.dart';
import 'package:credit_card/providers/credit_card_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreditCardForm extends StatefulWidget {
  const CreditCardForm({Key? key}) : super(key: key);

  @override
  State<CreditCardForm> createState() => _CreditCardFormState();
}

class _CreditCardFormState extends State<CreditCardForm> {
  late final FocusNode _focusCardName;
  late final FocusNode _focusCardMonth;
  late final FocusNode _focusCardYear;

  @override
  void initState() {
    super.initState();

    _focusCardName = FocusNode();
    _focusCardMonth = FocusNode();
    _focusCardYear = FocusNode();
  }

  @override
  void dispose() {
    _focusCardName.dispose();
    _focusCardMonth.dispose();
    _focusCardYear.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CreditCardProvider>(
      builder: (context, provider, child) {
        return Column(
          children: [
            CustomTextFormField(
              label: 'Card Number',
              textFormField: TextFormField(
                onChanged: (value) => provider.setCreditCardNumber(value),
                keyboardType: TextInputType.number,
                maxLength: kCreditCardNumberMaxLength,
                autofocus: true,
                onEditingComplete: () => _focusCardName.requestFocus(),
              ),
            ),
            CustomTextFormField(
              label: 'Name',
              textFormField: TextFormField(
                onChanged: (value) => provider.setCreditCardName(value),
                keyboardType: TextInputType.name,
                maxLength: kCreditCardNameMaxLength,
                focusNode: _focusCardName,
                onEditingComplete: () => _focusCardMonth.requestFocus(),
              ),
            ),
            CustomTextFormField(
              label: 'Month',
              textFormField: TextFormField(
                onChanged: (value) => provider.setCreditCardMonth(
                    value.isNotEmpty ? int.parse(value) : 0),
                keyboardType: TextInputType.number,
                maxLength: 2,
                focusNode: _focusCardMonth,
                onEditingComplete: () => _focusCardYear.requestFocus(),
              ),
            ),
            CustomTextFormField(
              label: 'Year',
              textFormField: TextFormField(
                onChanged: (value) {
                  provider.setCreditCardYear(
                      value.isNotEmpty ? int.parse(value) : 0);
                },
                keyboardType: TextInputType.number,
                maxLength: 4,
                focusNode: _focusCardYear,
              ),
            ),
          ],
        );
      },
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String label;
  final TextFormField textFormField;
  const CustomTextFormField(
      {Key? key, required this.label, required this.textFormField})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        textFormField,
      ],
    );
  }
}
