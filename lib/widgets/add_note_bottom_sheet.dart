import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_notes_state.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => AddNoteCubit(),
      child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit , AddNoteState>(
              listener: (context , state){
                if(state is AddNoteFailure){
                  if (kDebugMode) {
                    print('failed ${state.errMessage}');
                  }
                }
                if(state is AddNoteSuccess){
                  BlocProvider.of<NotesCubit>(context).getAllNotes();
                  Navigator.pop(context);
                }

              },
            builder:(context , state){
              return  AbsorbPointer(
                // this stop the user from making any changes to the ui
                // until something u want happen
                absorbing: state is AddNoteLoading ? true : false ,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 16.0 , right: 16.0 ,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                    child:  const AddNoteForm(),
                  )) ;
            } ,
          )
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
