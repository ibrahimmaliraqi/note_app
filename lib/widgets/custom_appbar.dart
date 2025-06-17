import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_button.dart';

class CutsomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  const CutsomAppBar({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 50),
        Text(
          "$title",
          style: TextStyle(fontSize: 23),
        ),
        Spacer(),
        CustomSearchButton(icon: icon),
      ],
    );
  }
}
