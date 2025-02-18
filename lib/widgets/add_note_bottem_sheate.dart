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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return  Form(
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CusomeFild(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Titel',
            maxLines: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          CusomeFild(
             onSaved: (value) {
              content = value;
            },
            hintText: 'Content',
            maxLines: 4,
          ),
          const SizedBox(
            height: 16,
          ),
           Cusome_Bottem(onTap: () { 
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
           },),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
