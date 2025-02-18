import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Appbarcusom.dart';
import 'package:notes_app/widgets/cusome_fild.dart';

class EditeBody extends StatelessWidget {
  const EditeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: Column(
        children: [
          Appbarcusom(title: 'Edit Note', icon: Icons.check,),
          SizedBox(height: 30,),
          CusomeFild(hintText: 'Titel'),
          SizedBox(height: 16,),
          CusomeFild(hintText: 'Content',maxLines: 5,),
        ],
      ),
    );
  }
}
