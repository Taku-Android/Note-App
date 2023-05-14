import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 24,),
            CustomTextField(hint: 'Title',),
            SizedBox(height: 32,),

            CustomTextField(hint: 'Content', maxLines: 5,),

            SizedBox(height: 36,),


            CustomButton(),

            SizedBox(height: 24,),

          ],
        ),
      ),
    );
  }
}


