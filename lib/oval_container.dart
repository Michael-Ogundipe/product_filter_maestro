import 'package:flutter/material.dart';

class OvalContainer extends StatelessWidget {
  const OvalContainer({
    super.key,
    required this.title,
    this.isSelected = false,
  });

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: const Color(0X33FFFFFF)),
        color: isSelected ? const Color(0XFFFF982B) : Colors.transparent,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.black : Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
