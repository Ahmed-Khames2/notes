import 'package:flutter/material.dart';
import 'package:notes_app/widgets/cusome_bottem.dart';
import 'package:notes_app/widgets/cusome_fild.dart';

class AddNoteBottomSheat extends StatelessWidget {
  const AddNoteBottomSheat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CusomeFild(
              hintText: 'Titel',
              maxLines: 1,
            ),
            SizedBox(
              height: 16,
            ),
            CusomeFild(
              hintText: 'Titel',
              maxLines: 4,
            ),
            SizedBox(
              height: 16,
            ),
            Cusome_Bottem(),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
