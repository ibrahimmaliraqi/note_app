import 'package:equatable/equatable.dart';

class AddNoteSatate extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddNoteInstite extends AddNoteSatate {}

class AddNoteLoading extends AddNoteSatate {}

class AddNoteSuccess extends AddNoteSatate {}

class AddNoteFailure extends AddNoteSatate {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}
