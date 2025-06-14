import 'package:go_router/go_router.dart';
import 'package:pixelfield/app_state.dart';
import 'package:pixelfield/pages/detail_page.dart';
import 'package:pixelfield/pages/home_page_widget.dart';
import 'package:pixelfield/pages/sign_in_page_widget.dart';
import 'package:pixelfield/pages/sign_up_page_widget.dart';
import 'package:pixelfield/pages/splash_screen_widget.dart';
import 'package:pixelfield/pages/welcome_screen_widget.dart';

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      routes: [
        GoRoute(
          name: '/',
          path: '/',
          builder: (context, state) => appStateNotifier.showSplashImage
              ? SplashScreenWidget()
              : WelcomeScreenWidget(),
        ),
        GoRoute(
          name: SignInPageWidget.routeName,
          path: SignInPageWidget.routePath,
          builder: (context, state) => SignInPageWidget(),
        ),
        GoRoute(
          name: SplashScreenWidget.routeName,
          path: SplashScreenWidget.routePath,
          builder: (context, state) => SplashScreenWidget(),
        ),
        GoRoute(
          name: WelcomeScreenWidget.routeName,
          path: WelcomeScreenWidget.routePath,
          builder: (context, state) => WelcomeScreenWidget(),
        ),
        GoRoute(
          name: SignUpPageWidget.routeName,
          path: SignUpPageWidget.routePath,
          builder: (context, state) => SignUpPageWidget(),
        ),
        GoRoute(
          name: HomePageWidget.routeName,
          path: HomePageWidget.routePath,
          builder: (context, state) => HomePageWidget(),
        ),
        GoRoute(
          name: DetailPage.routeName,
          path: DetailPage.routePath,
          builder: (context, state) => DetailPage(),
        )
      ],
    );
