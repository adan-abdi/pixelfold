import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class BottleCardWidget extends StatefulWidget {
  const BottleCardWidget({super.key});

  @override
  State<BottleCardWidget> createState() => _BottleCardWidgetState();
}

class _BottleCardWidgetState extends State<BottleCardWidget> {
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
    return InkWell(
      onTap: () {
        GoRouter.of(context).pushNamed('DetailPage');
      },
      child: Container(
        width: 170.0,
        height: 330.0,
        decoration: BoxDecoration(
          color: Color(0xFF122329),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: Image.network(
                      'https://otvrzeffbjqtvrxawiea.supabase.co/storage/v1/object/public/app-uploads//71402b345594e96ae2de07b2457c14f243c54e86.png',
                    ).image,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
              child: Container(
                width: double.infinity,
                height: 90.0,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Springbank 1992 #1234 ',
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
                      '(112/158)',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: GoogleFonts.lato().fontFamily,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal,
                            color: Colors.white60,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
