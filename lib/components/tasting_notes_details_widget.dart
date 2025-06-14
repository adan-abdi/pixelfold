import 'package:pixelfield/components/user_note_widget.dart';
import 'package:flutter/material.dart';

class TastingNotesDetailsWidget extends StatefulWidget {
  const TastingNotesDetailsWidget({super.key});

  @override
  State<TastingNotesDetailsWidget> createState() =>
      _TastingNotesDetailsWidgetState();
}

class _TastingNotesDetailsWidgetState extends State<TastingNotesDetailsWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
                color: Color(0xFF0B1519),
                borderRadius: BorderRadius.circular(4)),
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
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 40.0,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
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
    );
  }
}
