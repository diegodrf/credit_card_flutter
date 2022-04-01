import 'package:flutter/material.dart';

class CardChip extends StatelessWidget {
  const CardChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white70,
        gradient: LinearGradient(colors: [
          Colors.grey.shade100,
          Colors.grey.shade400,
          Colors.grey.shade100,
          Colors.grey.shade400,
          Colors.grey.shade100,
          Colors.grey.shade400,
          Colors.grey.shade100,
          Colors.grey.shade400,
          Colors.grey.shade100,
          Colors.grey.shade400,
          Colors.grey.shade100,
          Colors.grey.shade400,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: const Icon(
        Icons.grid_4x4_outlined,
        size: 32,
        color: Colors.white12,
      ),
    );
  }
}
