import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomAddNoteButton
    extends StatelessWidget {
  final bool isLoading;
  final void Function()? onTap;
  const CustomAddNoteButton({
    this.isLoading = false,
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
          child: isLoading
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child:
                      CircularProgressIndicator(
                        color: Colors.black,
                      ),
                )
              : Text(
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
