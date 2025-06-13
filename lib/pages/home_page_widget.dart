import 'package:pixelfield/components/bottle_card/bottle_card_widget.dart';
import 'package:pixelfield/components/bottom_tab_item/bottom_tab_item_widget.dart';
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
  late BottomTabItemModel bottomTabItemModel1;
  late BottomTabItemModel bottomTabItemModel2;
  late BottomTabItemModel bottomTabItemModel3;
  late BottomTabItemModel bottomTabItemModel4;
  late BottleCardModel bottleCardModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(
                  color: const Color(0xFF0E1C21),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(''),
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Container(
                            width: double.infinity,
                            height: 80.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFF0B1519),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
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
                                            : Theme.of(context).hintColor,
                                        size: activeTab == 0 ? 30.0 : 24.0,
                                      ),
                                      title: 'Scan',
                                      isActive: activeTab == 0,
                                    ),
                                  ),
                                  InkWell(
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
                                            : Theme.of(context).hintColor,
                                        size: activeTab == 1 ? 30.0 : 24.0,
                                      ),
                                      title: 'Collection',
                                      isActive: activeTab == 1,
                                    ),
                                  ),
                                  InkWell(
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
                                            : Theme.of(context).hintColor,
                                        size: activeTab == 2 ? 30.0 : 24.0,
                                      ),
                                      title: 'Shop',
                                      isActive: activeTab == 2,
                                    ),
                                  ),
                                  InkWell(
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
                                            : Theme.of(context).hintColor,
                                        size: activeTab == 3 ? 30.0 : 24.0,
                                      ),
                                      title: 'Settings',
                                      isActive: activeTab == 3,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 80.0,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'My Collection',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontFamily: 'EB Garamond',
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.italic,
                                          ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        // TODO: Implement navigation to auth page
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                          width: 40.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
                                    childAspectRatio: 0.7,
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
