import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'note_item_model.dart';
export 'note_item_model.dart';

class NoteItemWidget extends StatefulWidget {
  const NoteItemWidget({super.key});

  @override
  State<NoteItemWidget> createState() => _NoteItemWidgetState();
}

class _NoteItemWidgetState extends State<NoteItemWidget> {
  late NoteItemModel _model;

  @override
  void initState() {
    super.initState();
    _model = NoteItemModel();
    _model.initState(context);
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 130.0,
        decoration: BoxDecoration(
          color: Color(0xFF0B1519),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nose',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: GoogleFonts.ebGaramond().fontFamily,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                'Description',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      color: Theme.of(context).hintColor,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                'Description',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      color: Theme.of(context).hintColor,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                'Description',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      color: Theme.of(context).hintColor,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
