import 'package:flutter/material.dart';

import '../../../core/models/note_model.dart';
import '../widget/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: EditNoteViewBody(
          note: note,
        ),
      ),
    );
  }
}
