import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/cubit/add_note/add_notes_cubit.dart';
import '../../../core/widget/color_item.dart';
class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> color = [
    Colors.blueGrey,
    Colors.yellow,
    Colors.lightGreenAccent,
    Colors.green,
    Colors.orangeAccent,
    Colors.deepOrange,
    Colors.red,
    Colors.blue,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34 * 2,
      child: ListView.builder(
        itemCount: color.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  BlocProvider.of<AddNotesCubit>(context).color = color[index];
                  setState(() {});
                },
                child: ColorItem(
                  holdColor: currentIndex == index,
                  color: color[index],
                )),
          );
        },
      ),
    );
  }
}
