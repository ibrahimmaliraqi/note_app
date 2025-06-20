import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_satate.dart';
import 'package:note_app/mdels/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteSatate> {
  AddNoteCubit() : super(AddNoteInstite());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var addNote = Hive.box<NoteModel>(kHiveBox);
      await addNote.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
