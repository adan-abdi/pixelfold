import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_tile_item_model.dart';
export 'detail_tile_item_model.dart';

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
  late DetailTileItemModel _model;

  @override
  void initState() {
    super.initState();
    _model = DetailTileItemModel();
    _model.initState(context);
  }

  @override
  void dispose() {
    _model.dispose();

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
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 8.0, 12.0),
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
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.subtitle!,
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
            ],
          ),
        ),
      ),
    );
  }
}
