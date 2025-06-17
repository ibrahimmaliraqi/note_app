import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/mdels/note_model.dart';
import 'package:note_app/views/edit_note_page.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class ListViewBuild extends StatelessWidget {
  const ListViewBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(
              context,
            ).gg ??
            [];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return EditNotePage();
                },
              ),
            );
          },
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  bottom: 6,
                ),
                child: CustomNoteItem(
                  note: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
