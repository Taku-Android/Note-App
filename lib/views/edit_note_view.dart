import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/update_note_cubit/update_note_cubit.dart';
import 'package:note_app/widgets/edit_note/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateNoteCubit(),
      child: const Scaffold(
        body: EditNoteViewBody(),
      ),
    );
  }
}
