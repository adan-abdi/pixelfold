import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailTabBarItemWidget extends StatefulWidget {
  const DetailTabBarItemWidget({
    super.key,
    required this.title,
    bool? isActive,
  }) : this.isActive = isActive ?? false;

  final String? title;
  final bool isActive;

  @override
  State<DetailTabBarItemWidget> createState() => _DetailTabBarItemWidgetState();
}

class _DetailTabBarItemWidgetState extends State<DetailTabBarItemWidget> {

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
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: widget.isActive ? Color(0xFFDA9A00) : Color(0xFF0B1519),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Text(
          widget.title!,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: GoogleFonts.lato().fontFamily,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                color: widget.isActive
                    ? Colors.black
                    : Theme.of(context).hintColor,
                fontSize: 12.0,
                letterSpacing: 0.0,
              ),
        ),
      ),
    );
  }
}
