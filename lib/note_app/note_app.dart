import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/cubit/add_note/add_notes_cubit.dart';
import '../core/cubit/notes/notes_cubit.dart';
import '../feature/note_view/persention/notes_view.dart';
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNotesCubit(),)
      ],
      child: BlocProvider(
        create: (context) => NotesCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'assets/fonts/Poppins-Regular.ttf',
          ),
          home: const NotesView(),
        ),
      ),
    );
  }
}
