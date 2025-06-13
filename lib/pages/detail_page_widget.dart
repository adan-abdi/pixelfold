import 'package:flutter/material.dart';
import 'package:pixelfield/components/detail_tab_bar_item_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:pixelfield/components/details/details_model.dart';
import 'package:pixelfield/components/tasting_notes_details/tasting_notes_details_model.dart';

class DetailPageWidget extends StatefulWidget {
  const DetailPageWidget({super.key});

  static String routeName = 'DetailPage';
  static String routePath = '/detailPage';

  @override
  State<DetailPageWidget> createState() => _DetailPageWidgetState();
}

class _DetailPageWidgetState extends State<DetailPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int activeDetailTab = 0;
  int tab1Detail = 0;
  int tab2Detail = 1;
  int tab3Detail = 2;

  late DetailsModel detailsModel;
  late TastingNotesDetailsModel tastingNotesDetailsModel;

  

  void initState() {
    super.initState();
    detailsModel = DetailsModel();
    detailsModel.initState(context);
    tastingNotesDetailsModel = TastingNotesDetailsModel();
    tastingNotesDetailsModel.initState(context);
  }

  void dispose() {
    detailsModel.dispose();
    tastingNotesDetailsModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height,
                  decoration: BoxDecoration(
                    color: Color(0xFF0B1519),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://otvrzeffbjqtvrxawiea.supabase.co/storage/v1/object/public/app-uploads//19de02ee16df1fdbe7d087bee76fec3f4d2006a7.png',
                      ).image,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 60.0,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Genesis Collection',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontFamily:
                                              GoogleFonts.lato().fontFamily,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.normal,
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      GoRouter.of(context).pop();
                                    },
                                    icon: Icon(
                                      Icons.clear,
                                      color: Theme.of(context).primaryColor,
                                      size: 24.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 10.0,
                            decoration: BoxDecoration(),
                          ),
                          Container(
                            width: double.infinity,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF0B1519),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.network(
                                              'https://otvrzeffbjqtvrxawiea.supabase.co/storage/v1/object/public/app-uploads//77fd695aed9aed52bb6a1dc3b6dca114cce4316d.png',
                                            ).image,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10.0),
                                      Text(
                                        'Genuine Bottle (Unopened)',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              fontFamily:
                                                  GoogleFonts.lato().fontFamily,
                                              fontWeight: FontWeight.normal,
                                              fontStyle: FontStyle.normal,
                                              color: Theme.of(context)
                                                  .scaffoldBackgroundColor,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xFFFFB901),
                                    size: 30.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 20.0,
                            decoration: BoxDecoration(),
                          ),
                          Container(
                            width: double.infinity,
                            height: 280.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'https://otvrzeffbjqtvrxawiea.supabase.co/storage/v1/object/public/app-uploads//71402b345594e96ae2de07b2457c14f243c54e86.png',
                                ).image,
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 20.0,
                            decoration: BoxDecoration(),
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFF122329),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: 100.0,
                                decoration: BoxDecoration(),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      DetailTabBarItemWidget(
                                        title: 'Details',
                                        isActive: activeDetailTab ==
                                            tab1Detail,
                                      ),
                                      SizedBox(height: 10.0),
                                      DetailTabBarItemWidget(
                                        title: 'Tasting Notes',
                                        isActive: activeDetailTab ==
                                            tab2Detail,
                                      ),
                                      SizedBox(height: 10.0),
                                      DetailTabBarItemWidget(
                                        title: 'Reviews',
                                        isActive: activeDetailTab ==
                                            tab3Detail,
                                      ),
                                      SizedBox(height: 30.0),
                                      Container(
                                        width: double.infinity,
                                        height: 50.0,
                                        child: ElevatedButton(
                                          onPressed: () async {
                                            GoRouter.of(context)
                                                .pushNamed('AuthChoosePage');
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Theme.of(context).primaryColor,
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontFamily: GoogleFonts.lato()
                                                      .fontFamily,
                                                  color: Colors.white,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                ),
                                            elevation: 3.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                          ),
                                          child: Text(
                                            'Buy Now',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontFamily: GoogleFonts.lato()
                                                      .fontFamily,
                                                  color: Theme.of(context)
                                                      .scaffoldBackgroundColor,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.0),
                                      Container(
                                        width: double.infinity,
                                        height: 50.0,
                                        child: OutlinedButton(
                                          onPressed: () async {
                                            // Add to Wishlist action
                                          },
                                          style: OutlinedButton.styleFrom(
                                            side: BorderSide(
                                              color:
                                                  Theme.of(context).hintColor,
                                              width: 2.0,
                                            ),
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontFamily: GoogleFonts.lato()
                                                      .fontFamily,
                                                  color: Theme.of(context)
                                                      .hintColor,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                          ),
                                          child: Text('Add to Wishlist'),
                                        ),
                                      ),
                                      SizedBox(height: 30.0),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
