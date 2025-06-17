import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_satate.dart';
import 'package:note_app/mdels/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteSatate> {
  AddNoteCubit() : super(AddNoteInstite());

  addNote(NoteModel note) {}
}
