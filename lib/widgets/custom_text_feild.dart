import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextFeild extends StatelessWidget {
  final String lable;
  final int maxLIines;
  final void Function(String?)? onSaved;
  const CustomTextFeild({
    super.key,
    required this.lable,
    this.maxLIines = 1,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "feild is required";
        } else {
          return null;
        }
      },
      maxLines: maxLIines,
      cursorColor: textFeildColor,
      decoration: InputDecoration(
        label: Text(
          "$lable",
          style: TextStyle(color: textFeildColor),
        ),
        border: OutlineInputborder(),
        focusedBorder: OutlineInputborder(
          color: textFeildColor,
        ),
      ),
    );
  }

  OutlineInputBorder OutlineInputborder({
    Color? color,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
