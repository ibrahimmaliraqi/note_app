import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_feild.dart';
import 'package:note_app/widgets/custon_add_note_button.dart';

class AddNotesButton extends StatefulWidget {
  const AddNotesButton({super.key});

  @override
  State<AddNotesButton> createState() =>
      _AddNotesButtonState();
}

class _AddNotesButtonState
    extends State<AddNotesButton> {
  String? title;
  String? subtitle;
  GlobalKey<FormState> auth = GlobalKey();
  AutovalidateMode auto =
      AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 22,
      ),
      child: SingleChildScrollView(
        child: Form(
          autovalidateMode: auto,
          key: auth,
          child: Column(
            children: [
              SizedBox(height: 12),

              CustomTextFeild(
                lable: "Title",
                onSaved: (p0) {
                  title = p0;
                },
              ),
              SizedBox(height: 12),
              CustomTextFeild(
                onSaved: (p0) {
                  subtitle = p0;
                },
                lable: "Content",
                maxLIines: 5,
              ),
              SizedBox(height: 50),
              CustomAddNoteButton(
                onTap: () {
                  if (auth.currentState!
                      .validate()) {
                    auth.currentState!.save();
                  } else {
                    auto =
                        AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
