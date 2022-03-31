import 'package:flutter/material.dart';

class CardDecoration extends StatelessWidget {
  const CardDecoration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24.0),
      width: 80.0,
      height: double.infinity,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.02,
          crossAxisCount: 6,
        ),
        itemBuilder: (context, index) => Text(
          '.',
          style: TextStyle(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
