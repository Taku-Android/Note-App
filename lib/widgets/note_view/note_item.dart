import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.index}) : super(key: key);

  final int index ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNoteView();
        }));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4) ,
        padding: const EdgeInsets.only(top: 24 , bottom: 24 , left: 16 ),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16) ,

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(BlocProvider.of<NotesCubit>(context).notes![index].title , style: const TextStyle(
                  color: Colors.black ,
                  fontSize: 28
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(BlocProvider.of<NotesCubit>(context).notes![index].subTitle, style: TextStyle(
                    color: Colors.black.withOpacity(.5) ,
                    fontSize: 20
                ),),
              ),
              trailing: IconButton(onPressed: (){},
                icon: const Icon(
                  FontAwesomeIcons.trash ,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ) ,
            Padding(
              padding: const EdgeInsets.only(right: 24.0 , top: 24),
              child: Text(BlocProvider.of<NotesCubit>(context).notes![index].date , style: TextStyle(
                color: Colors.black.withOpacity(.5) ,
              ),),
            )
          ],
        ),


      ),
    );
  }
}