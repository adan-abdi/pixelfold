import 'package:google_fonts/google_fonts.dart';
import 'package:pixelfield/components/bottle_card_widget.dart';
import 'package:pixelfield/components/bottom_tab_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  int activeTab = 0;
  int tab1 = 0;
  int tab2 = 1;
  int tab3 = 2;
  int? tab4 = 3;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF0E1C21),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 80.0,
          decoration: const BoxDecoration(
            color: Color(0xFF0B1519),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        activeTab = 0;
                      });
                    },
                    child: BottomTabItemWidget(
                      icon: Icon(
                        Icons.qr_code_rounded,
                        color: activeTab == 0
                            ? Theme.of(context).primaryColor
                            : Colors.white60,
                        size: activeTab == 0 ? 30.0 : 24.0,
                      ),
                      title: 'Scan',
                      isActive: activeTab == 0,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        activeTab = 1;
                      });
                    },
                    child: BottomTabItemWidget(
                      icon: Icon(
                        Icons.space_dashboard_outlined,
                        color: activeTab == 1
                            ? Theme.of(context).primaryColor
                            : Colors.white60,
                        size: activeTab == 1 ? 30.0 : 24.0,
                      ),
                      title: 'Collection',
                      isActive: activeTab == 1,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        activeTab = 2;
                      });
                    },
                    child: BottomTabItemWidget(
                      icon: FaIcon(
                        FontAwesomeIcons.wineBottle,
                        color: activeTab == 2
                            ? Theme.of(context).primaryColor
                            : Colors.white60,
                        size: activeTab == 2 ? 30.0 : 24.0,
                      ),
                      title: 'Shop',
                      isActive: activeTab == 2,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        activeTab = 3;
                      });
                    },
                    child: BottomTabItemWidget(
                      icon: Icon(
                        Icons.settings_outlined,
                        color: activeTab == 3
                            ? Theme.of(context).primaryColor
                            : Colors.white60,
                        size: activeTab == 3 ? 30.0 : 24.0,
                      ),
                      title: 'Settings',
                      isActive: activeTab == 3,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFF0E1C21),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 80.0,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'My Collection',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              fontFamily:
                                                  GoogleFonts.lato().fontFamily,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {},
                                        child: CircleAvatar(
                                          backgroundColor: Color(0xFF0B1519),
                                          child: Icon(
                                            Icons.notifications_outlined,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 16.0,
                                    mainAxisSpacing: 16.0,
                                    childAspectRatio: 0.55,
                                  ),
                                  scrollDirection: Axis.vertical,
                                  itemCount: 4,
                                  itemBuilder: (context, bottleCardIndex) {
                                    return const BottleCardWidget();
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
