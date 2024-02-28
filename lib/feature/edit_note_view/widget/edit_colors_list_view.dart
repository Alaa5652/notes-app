import 'package:flutter/material.dart';

import '../../../../core/models/note_model.dart';
import '../../../core/constants.dart';
import '../../../core/widget/color_item.dart';

class EditColorsListView extends StatefulWidget {
  const EditColorsListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColorsListView> createState() => _EditColorsListViewState();
}

class _EditColorsListViewState extends State<EditColorsListView> {

  late int currentIndex;
  @override
  void initState() {
    currentIndex = widget.note.color;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34 * 2,
      child: ListView.builder(
        itemCount: kColor.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColor[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  holdColor: currentIndex == index,
                  color: kColor[index],
                )),
          );
        },
      ),
    );
  }
}