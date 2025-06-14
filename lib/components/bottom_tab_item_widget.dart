import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomTabItemWidget extends StatefulWidget {
  const BottomTabItemWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.isActive,
  });

  final Widget? icon;
  final String? title;
  final bool? isActive;

  @override
  State<BottomTabItemWidget> createState() => _BottomTabItemWidgetState();
}

class _BottomTabItemWidgetState extends State<BottomTabItemWidget> {

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
      height: 100.0,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            child: widget.icon!,
          ),
          Text(
            widget.title!,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                  color: widget.isActive!
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).hintColor,
                  letterSpacing: 0.0,
                ),
          ),
        ],
      ),
    );
  }
}
