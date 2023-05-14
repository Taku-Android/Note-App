import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'note_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 55,),
          CustomAppBar(),

          Expanded(child: NotesListView()),

        ],
      ),
    );
  }
}







