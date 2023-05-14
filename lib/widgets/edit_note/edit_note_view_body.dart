import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: const [

          SizedBox(height: 55,),
          CustomAppBar(title: 'Edit Note', icon: Icons.check,),
          SizedBox(height: 55),
          CustomTextField(hint: 'title') ,
          SizedBox(height: 24),
          CustomTextField(hint: 'content' , maxLines: 5,)
        ],
      ),
    );
  }
}
