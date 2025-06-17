import 'package:flutter/material.dart';

class CustomDeleteButton extends StatelessWidget {
  const CustomDeleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.delete,
        size: 28,
        color: Colors.black,
      ),
    );
  }
}
