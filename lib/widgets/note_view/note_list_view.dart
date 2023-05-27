import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';
import '../../model/note_model.dart';
import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(builder: (context, state) {

      List<NoteModel> notes  = BlocProvider.of<NotesCubit>(context).notes?? [] ;

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return NoteItem(
              index: index,
            );
          },
          itemCount: notes.length,
        ),
      );
    });
  }
}
