import 'package:pixelfield/components/note_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserNoteWidget extends StatefulWidget {
  const UserNoteWidget({
    super.key,
    required this.userNoteTitle,
    bool? isMyNote,
  }) : this.isMyNote = isMyNote ?? false;

  final String? userNoteTitle;
  final bool isMyNote;

  @override
  State<UserNoteWidget> createState() => _UserNoteWidgetState();
}

class _UserNoteWidgetState extends State<UserNoteWidget> {
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
      width: double.infinity,
      decoration: BoxDecoration(),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.userNoteTitle!,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: GoogleFonts.ebGaramond().fontFamily,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            color: Theme.of(context).scaffoldBackgroundColor,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    if (!widget.isMyNote)
                      Text(
                        'by Charles MacLean MBE',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: GoogleFonts.lato().fontFamily,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Colors.white60,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                  ],
                ),
                if (widget.isMyNote)
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24.0,
                  ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 20.0,
            ),
            NoteItemWidget(),
            Container(
              width: double.infinity,
              height: 20.0,
            ),
            NoteItemWidget(),
            Container(
              width: double.infinity,
              height: 20.0,
            ),
            NoteItemWidget(),
          ],
        ),
      ),
    );
  }
}
