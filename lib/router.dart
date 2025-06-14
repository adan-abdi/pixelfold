import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixelfield/blocs/app/app_bloc.dart';
import 'package:pixelfield/blocs/app/app_state.dart';
import 'package:pixelfield/pages/detail_page.dart';
import 'package:pixelfield/pages/home_page_widget.dart';
import 'package:pixelfield/pages/sign_in_page_widget.dart';
import 'package:pixelfield/pages/sign_up_page_widget.dart';
import 'package:pixelfield/pages/splash_screen_widget.dart';
import 'package:pixelfield/pages/welcome_screen_widget.dart';

GoRouter createRouter(AppBloc appBloc) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          name: '/',
          path: '/',
          builder: (context, state) => BlocBuilder<AppBloc, AppState>(
            builder: (context, appState) => appState.showSplashImage
                ? const SplashScreenWidget()
                : const WelcomeScreenWidget(),
          ),
        ),
        GoRoute(
          name: SignInPageWidget.routeName,
          path: SignInPageWidget.routePath,
          builder: (context, state) => const SignInPageWidget(),
        ),
        GoRoute(
          name: SplashScreenWidget.routeName,
          path: SplashScreenWidget.routePath,
          builder: (context, state) => const SplashScreenWidget(),
        ),
        GoRoute(
          name: WelcomeScreenWidget.routeName,
          path: WelcomeScreenWidget.routePath,
          builder: (context, state) => const WelcomeScreenWidget(),
        ),
        GoRoute(
          name: SignUpPageWidget.routeName,
          path: SignUpPageWidget.routePath,
          builder: (context, state) => const SignUpPageWidget(),
        ),
        GoRoute(
          name: HomePageWidget.routeName,
          path: HomePageWidget.routePath,
          builder: (context, state) => const HomePageWidget(),
        ),
        GoRoute(
          name: DetailPage.routeName,
          path: DetailPage.routePath,
          builder: (context, state) => const DetailPage(),
        )
      ],
    );

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
