import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pixelfield/blocs/app/app_bloc.dart';
import 'package:pixelfield/blocs/app/app_event.dart';
import 'package:pixelfield/pages/welcome_screen_widget.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  static String routeName = 'SplashScreen';
  static String routePath = '/splashScreen';

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1000));
      if (mounted) {
        context.read<AppBloc>().add(const StopShowingSplashImage());
        context.goNamed(WelcomeScreenWidget.routeName);
      }
    });
  }

  @override
  void dispose() {
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
        backgroundColor: const Color(0xFF0B1519),
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
                  child: const Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: SizedBox(
                      width: 140.0,
                      height: 140.0,
                      child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://otvrzeffbjqtvrxawiea.supabase.co/storage/v1/object/public/app-uploads//logo.png',
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
