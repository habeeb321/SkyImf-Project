import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: const Color(0xff6750A4),
          size: 30,
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(fontSize: 15, color: Color(0xff6750A4)),
        ),
      ],
    );
  }
}
