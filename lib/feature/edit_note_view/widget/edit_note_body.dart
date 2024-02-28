import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../core/cubit/notes/notes_cubit.dart';
import '../../../../core/models/note_model.dart';
import '../../../../core/widget/custom_app_bar.dart';
import '../../../../core/widget/custom_text_field.dart';
import 'edit_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  dynamic Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomAppBar(
            titleAppBar: 'Edit',
            iconAppBar: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.date = DateFormat('dd-m-yyyy').format(DateTime.now());
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            onChanged: (p0) {
              title = p0;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(
              onChanged: (p0) {
                content = p0;
              },
              hint: 'content',
              maxLines: 5),
          const SizedBox(
            height: 30,
          ),
          EditColorsListView(note: widget.note),
        ],
      ),
    );
  }
}
