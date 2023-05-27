import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/cubits/update_note_cubit/update_note_cubit.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

import '../../model/note_model.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {


  @override
  void initState() {
    super.initState();
    initNote = BlocProvider.of<NotesCubit>(context).note;

  }

  NoteModel? initNote ;
  String?  title , subTitle ;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children:  [

          const SizedBox(height: 55,),
           CustomAppBar(title: 'Edit Note', icon: Icons.check, onTap: (){
             initNote!.title = title ?? initNote!.title ;
             initNote!.subTitle = subTitle ?? initNote!.subTitle ;
            BlocProvider.of<UpdateNoteCubit>(context).updateNote(
                initNote ,
                BlocProvider.of<NotesCubit>(context).index

            );
            BlocProvider.of<NotesCubit>(context).getAllNotes();
            Navigator.pop(context);
          },),
          const SizedBox(height: 55),
          CustomTextField(hint: 'title' , initValue: initNote!.title, onChanged: (value){
            title = value ;

          }, ) ,
          const SizedBox(height: 24),
          CustomTextField(hint: 'content' , initValue: initNote!.subTitle , maxLines: 5, onChanged: (value){
            subTitle = value ;
          },)
        ],
      ),
    );
  }
}
