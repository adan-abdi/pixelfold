import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:pixelfield/pages/sign_in_page_widget.dart';
import 'package:pixelfield/pages/sign_up_page_widget.dart';
import 'package:pixelfield/widgets/app_widgets.dart';

class WelcomeScreenWidget extends StatefulWidget {
  const WelcomeScreenWidget({super.key});

  static String routeName = 'WelcomeScreen';
  static String routePath = '/welcomeScreen';

  @override
  State<WelcomeScreenWidget> createState() => _WelcomeScreenWidgetState();
}

class _WelcomeScreenWidgetState extends State<WelcomeScreenWidget> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

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
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF0B1519),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFF0B1519),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://otvrzeffbjqtvrxawiea.supabase.co/storage/v1/object/public/app-uploads//19de02ee16df1fdbe7d087bee76fec3f4d2006a7.png',
                      ),
                    ),
                  ),
                  child: SafeArea(
                    child: Container(
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 100.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 265.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFF122329),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Welcome!',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                            fontFamily: GoogleFonts.ebGaramond()
                                                .fontFamily,
                                            color: Colors.white,
                                            fontSize: 32.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          'Text Text Text',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                fontFamily: GoogleFonts.lato()
                                                    .fontFamily,
                                                fontWeight: FontWeight.normal,
                                                fontStyle: FontStyle.normal,
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                    AppButton(
                                      text: 'Scan Bottle',
                                      onPressed: () {
                                        context
                                            .push(SignUpPageWidget.routePath);
                                      },
                                      backgroundColor: const Color(0xFFD49A00),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Have an account?',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                fontFamily: GoogleFonts.lato()
                                                    .fontFamily,
                                                fontWeight: FontWeight.normal,
                                                fontStyle: FontStyle.normal,
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        const SizedBox(width: 10),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () {
                                            context.push(
                                                SignInPageWidget.routePath);
                                          },
                                          child: Text(
                                            'Sign In First',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontFamily:
                                                      GoogleFonts.ebGaramond()
                                                          .fontFamily,
                                                  color:
                                                      const Color(0xFFD49A00),
                                                  fontSize: 16.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
