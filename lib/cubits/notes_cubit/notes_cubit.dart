import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/mdels/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  List<NoteModel>? gg;
  NotesCubit() : super(NotesInitial());

  fetchNotes() async {
    var addNote = Hive.box<NoteModel>(kHiveBox);
    gg = addNote.values.toList();
  }
}
