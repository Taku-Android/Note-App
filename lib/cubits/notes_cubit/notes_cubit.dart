import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/model/note_model.dart';
import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState>{
  NotesCubit() : super(NotesInitial());



  NoteModel? note ;
  int? index ;
  List<NoteModel>? notes ;

  getAllNotes() async {
    var  noteBox  = Hive.box<NoteModel>(kHiveBox);
     notes =  noteBox.values.toList();
     emit(NotesRefresh());

  }



}