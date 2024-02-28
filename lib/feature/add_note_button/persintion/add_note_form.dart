import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../core/cubit/add_note/add_notes_cubit.dart';
import '../../../core/models/note_model.dart';
import '../../../core/widget/custom_button.dart';
import '../../../core/widget/custom_text_field.dart';
import '../widget/color_list_view.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> key = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTilte;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            onSaved: (p0) {
              title = p0;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onSaved: (p0) {
              subTilte = p0;
            },
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomButton(
                onTap: () {
                  if (key.currentState!.validate()) {
                    key.currentState!.save();
                    var noteModel = NoteModel(
                        title: title!,
                        subTitle: subTilte!,
                        date: DateFormat('dd-mm-yyyy').format(DateTime.now()),
                        color: Colors.blue.value);
                    BlocProvider.of<AddNotesCubit>(context).addNotes(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
