import 'package:flutter/material.dart';
import 'package:pixelfield/components/note_item/note_item_model.dart';

class UserNoteModel {
  ///  State fields for stateful widgets in this component.

  // Model for NoteItem component.
  late NoteItemModel noteItemModel1;
  // Model for NoteItem component.
  late NoteItemModel noteItemModel2;
  // Model for NoteItem component.
  late NoteItemModel noteItemModel3;

  void initState(BuildContext context) {
    noteItemModel1 = NoteItemModel();
    noteItemModel1.initState(context);
    noteItemModel2 = NoteItemModel();
    noteItemModel2.initState(context);
    noteItemModel3 = NoteItemModel();
    noteItemModel3.initState(context);
  }

  void dispose() {
    noteItemModel1.dispose();
    noteItemModel2.dispose();
    noteItemModel3.dispose();
  }
}
