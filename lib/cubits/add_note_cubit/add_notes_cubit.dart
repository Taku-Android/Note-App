import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/model/note_model.dart';
import 'add_notes_state.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit() : super(AddNotesInitial());




  addNote(NoteModel note) async {
    var  noteBox  = Hive.box<NoteModel>(kHiveBox);

    try{
      emit(AddNoteLoading());
      await noteBox.add(note);
      emit(AddNoteSuccess());

    }catch(e){
      emit(AddNoteFailure(e.toString()));
    }

  }



}