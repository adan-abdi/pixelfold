import 'package:pixelfield/components/user_note/user_note_widget.dart';
import 'package:flutter/material.dart';
import 'tasting_notes_details_model.dart';
export 'tasting_notes_details_model.dart';

class TastingNotesDetailsWidget extends StatefulWidget {
  const TastingNotesDetailsWidget({super.key});

  @override
  State<TastingNotesDetailsWidget> createState() =>
      _TastingNotesDetailsWidgetState();
}

class _TastingNotesDetailsWidgetState extends State<TastingNotesDetailsWidget> {
  late TastingNotesDetailsModel _model;

  @override
  void initState() {
    super.initState();
    _model = TastingNotesDetailsModel();
    _model.initState(context);
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  color: Color(0xFF0B1519),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    constraints: BoxConstraints(
                      maxWidth: 40.0,
                      maxHeight: 40.0,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ),
            UserNoteWidget(
              userNoteTitle: 'Tasting Notes',
              isMyNote: false,
            ),
            Container(
              width: double.infinity,
              height: 30.0,
              decoration: BoxDecoration(),
            ),
            UserNoteWidget(
              userNoteTitle: 'My Notes',
              isMyNote: true,
            ),
            Container(
              width: double.infinity,
              height: 30.0,
              decoration: BoxDecoration(),
            ),
          ],
        ),
      ),
    );
  }
}
