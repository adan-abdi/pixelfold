import 'package:flutter/material.dart';
import 'package:pixelfield/components/user_note/user_note_model.dart';

class TastingNotesDetailsModel {
  ///  State fields for stateful widgets in this component.

  // Model for UserNote component.
  late UserNoteModel userNoteModel1;
  // Model for UserNote component.
  late UserNoteModel userNoteModel2;

  void initState(BuildContext context) {
    userNoteModel1 = UserNoteModel();
    userNoteModel1.initState(context);
    userNoteModel2 = UserNoteModel();
    userNoteModel2.initState(context);
  }

  void dispose() {
    userNoteModel1.dispose();
    userNoteModel2.dispose();
  }
}
