import 'package:flutter/material.dart';

import '../widget/floating_add_button.dart';
import '../widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: FloatingAddButton(),
      body: NotesViewBody(),
    );
  }
}


