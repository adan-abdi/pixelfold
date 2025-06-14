import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailTileItemWidget extends StatefulWidget {
  const DetailTileItemWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String? title;
  final String? subtitle;

  @override
  State<DetailTileItemWidget> createState() => _DetailTileItemWidgetState();
}

class _DetailTileItemWidgetState extends State<DetailTileItemWidget> {
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
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title!,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                widget.subtitle!,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      color: Colors.white60,
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
