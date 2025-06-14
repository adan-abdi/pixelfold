import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixelfield/theme/app_theme.dart';
import 'package:pixelfield/blocs/app/app_bloc.dart';
import 'package:pixelfield/blocs/theme/theme_bloc.dart';
import 'package:pixelfield/blocs/theme/theme_state.dart';
import 'package:pixelfield/router.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppBloc()),
        BlocProvider(create: (context) => ThemeBloc()),
      ],
      child: const PixelFoldApp(),
    ),
  );
}

class PixelFoldApp extends StatelessWidget {
  const PixelFoldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'pixelfield',
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('en', '')],
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeState.themeMode,
          routerConfig: createRouter(context.read<AppBloc>()),
        );
      },
    );
  }
}
