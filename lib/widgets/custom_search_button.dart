import 'package:flutter/material.dart';

class CustomSearchButton extends StatelessWidget {
  final IconData icon;

  const CustomSearchButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),

        color: Colors.white.withOpacity(0.05),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, size: 26),
      ),
    );
  }
}
