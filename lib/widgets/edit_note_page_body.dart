import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_feild.dart';

class EditNotePageBody extends StatelessWidget {
  const EditNotePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 10,
      ),
      child: Column(
        children: [
          CutsomAppBar(
            title: "Edit Notes",
            icon: Icons.check,
          ),
          SizedBox(height: 16),
          CustomTextFeild(lable: "Title"),
          SizedBox(height: 18),
          CustomTextFeild(
            lable: "Content",
            maxLIines: 6,
          ),
        ],
      ),
    );
  }
}
