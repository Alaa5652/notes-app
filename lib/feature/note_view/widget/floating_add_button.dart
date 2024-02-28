import 'package:flutter/material.dart';

import '../../add_note_button/persintion/buttom_sheet.dart';

class FloatingAddButton extends StatelessWidget {
  const FloatingAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const CustomBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add));
  }
}
