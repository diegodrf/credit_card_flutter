import 'dart:ui';

import 'package:flutter/material.dart';

class CardBase extends StatelessWidget {
  final Widget cardContent;
  const CardBase({Key? key, required this.cardContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Colors.purple,
              Colors.red,
            ],
          ),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black87,
              offset: Offset(16.0, 16.0),
              blurRadius: 16.0,
            ),
          ],
        ),
        child: cardContent,
      ),
    );
  }
}
