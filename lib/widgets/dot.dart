import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({
    super.key,
    required this.currentPage,
    required this.index,
  });

  final int currentPage, index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color:
            currentPage == index ? Colors.black : Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(13),
      ),
      margin: const EdgeInsets.only(right: 8),
    );
  }
}
