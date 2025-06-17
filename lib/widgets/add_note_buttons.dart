import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_satate.dart';
import 'package:note_app/mdels/note_model.dart';
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
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 22,
        ),
        child: BlocConsumer<AddNoteCubit, AddNoteSatate>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print(state.errMessage);
            } else if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading
                  ? true
                  : false,
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
                            auth.currentState!
                                .save();
                            BlocProvider.of<
                                  AddNoteCubit
                                >(context)
                                .addNote(
                                  NoteModel(
                                    title: title!,
                                    subtitle:
                                        subtitle!,
                                    date: DateTime.now()
                                        .toString(),
                                    color: Colors
                                        .red
                                        .value,
                                  ),
                                );
                          } else {
                            auto =
                                AutovalidateMode
                                    .always;
                            setState(() {});
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
