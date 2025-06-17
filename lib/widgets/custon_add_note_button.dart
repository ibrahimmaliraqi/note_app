import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomAddNoteButton
    extends StatelessWidget {
  final void Function()? onTap;
  const CustomAddNoteButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        decoration: BoxDecoration(
          color: textFeildColor,

          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            "Add",
            style: TextStyle(
              color: Colors.black,
              fontSize: 19,
            ),
          ),
        ),
      ),
    );
  }
}
