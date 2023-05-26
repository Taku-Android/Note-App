import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_notes_state.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
            child: BlocListener<AddNoteCubit , AddNoteState>(
                listener: (context , state){
                  if(state is AddNoteFailure){
                    print('failed ${state.errMessage}');
                  }
                  if(state is AddNoteSuccess){
                    Navigator.pop(context);
                  }

                },
                child: const AddNoteForm(),
                )
        ),
      ),
    );
  }
}


/**
 *
 * we have 3 bloc`s
 * 1 - Bloc Listener
 * 2 - Bloc Consumer
 * 3 - Bloc Builder
 *
 *  --- what`s the diffrence between them
 *
 *  Bloc Listener -> listen and make some code`s  if something changes
 *  Bloc Builder  -> reBuild the ui every time  if there is change he will rebuild it
 *  Bloc Consumer -> using listener and the builder
 *
 *  so use depend on your needs  ----
 *
 */
