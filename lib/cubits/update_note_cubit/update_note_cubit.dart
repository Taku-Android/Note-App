import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/model/note_model.dart';
import 'update_note_state.dart';

class UpdateNoteCubit extends Cubit<UpdateNoteState>{
  UpdateNoteCubit() : super(UpdateNoteInitial());


  updateNote(note , index) async {
    var  noteBox  = Hive.box<NoteModel>(kHiveBox);
    noteBox.putAt(index, note);
    emit(UpdateNoteSuccess());

  }



}