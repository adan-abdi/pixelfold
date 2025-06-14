import 'package:flutter/material.dart';
import 'package:pixelfield/components/detail_tab_bar_item_widget.dart';
import 'package:pixelfield/utils/connectivity_service.dart';
import 'package:pixelfield/widgets/shimmer_loading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:pixelfield/components/details_widget.dart';
import 'package:pixelfield/components/history.dart';
import 'package:pixelfield/components/tasting_notes_details_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  static String routeName = 'DetailPage';
  static String routePath = '/detailPage';

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int activeDetailTab = 0;
  bool _isLoading = true;
  bool _hasInternet = true;
  final ConnectivityService _connectivityService = ConnectivityService();

  @override
  void initState() {
    super.initState();
    _checkConnectivity();
  }

  Future<void> _checkConnectivity() async {
    setState(() => _isLoading = true);
    await Future.delayed(const Duration(seconds: 1)); // Simulated delay
    final hasInternet = await _connectivityService.checkConnectivity();
    setState(() {
      _hasInternet = hasInternet;
      _isLoading = false;
    });
  }

  @override
  void dispose() {
    _connectivityService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFF0B1519),
        child: SafeArea(
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.transparent,
            body: _isLoading
                ? _buildLoadingState()
                : !_hasInternet
                    ? _buildNoInternetState()
                    : _buildContent(),
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingState() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF0B1519),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
        child: Column(
          children: [
            ShimmerLoading(height: 60),
            SizedBox(height: 10),
            ShimmerLoading(height: 40),
            SizedBox(height: 20),
            ShimmerLoading(height: 280),
            SizedBox(height: 20),
            ShimmerLoading(height: 200),
          ],
        ),
      ),
    );
  }

  Widget _buildNoInternetState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.wifi_off, size: 48, color: Colors.white60),
          const SizedBox(height: 16),
          Text(
            'No Internet Connection',
            style: TextStyle(color: Colors.white60),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _checkConnectivity,
            child: Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      width: double.infinity,
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
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Genesis Collection',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: GoogleFonts.lato().fontFamily,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xFF0B1519),
                        child: IconButton(
                          onPressed: () async {
                            GoRouter.of(context).pop();
                          },
                          icon: Icon(
                            Icons.clear,
                            color: Colors.white,
                            size: 24.0,
                          ),
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
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                  fontFamily: GoogleFonts.lato().fontFamily,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.normal,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
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
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFF122329),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bottle 135/184",
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontFamily: GoogleFonts.lato().fontFamily,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.white60,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontFamily:
                                        GoogleFonts.ebGaramond().fontFamily,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.normal,
                                    color: Colors.white,
                                    fontSize: 32.0,
                                    letterSpacing: 0.0,
                                  ),
                              children: [
                                const TextSpan(text: 'Talisker '),
                                const TextSpan(
                                  text: '18 Year old',
                                  style: TextStyle(color: Color(0xFFFFB901)),
                                ),
                                const TextSpan(text: '\n#2504'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color(0xFF0E1C21),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  activeDetailTab = 0;
                                });
                              },
                              child: DetailTabBarItemWidget(
                                title: 'Details',
                                isActive: activeDetailTab == 0,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  activeDetailTab = 1;
                                });
                              },
                              child: DetailTabBarItemWidget(
                                title: 'Tasting Notes',
                                isActive: activeDetailTab == 1,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  activeDetailTab = 2;
                                });
                              },
                              child: DetailTabBarItemWidget(
                                title: 'History',
                                isActive: activeDetailTab == 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        child: Column(
                          children: [
                            (activeDetailTab == 0)
                                ? DetailsWidget()
                                : const SizedBox.shrink(),
                            (activeDetailTab == 1)
                                ? TastingNotesDetailsWidget()
                                : const SizedBox.shrink(),
                            (activeDetailTab == 2)
                                ? History()
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () async {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                            textStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: GoogleFonts.lato().fontFamily,
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                ),
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 25,
                              ),
                              Text(
                                'Add to my collection',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontFamily:
                                          GoogleFonts.ebGaramond().fontFamily,
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
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
            ],
          ),
        ),
      ),
    );
  }
}
