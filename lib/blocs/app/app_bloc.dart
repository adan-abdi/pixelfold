import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<StopShowingSplashImage>(_onStopShowingSplashImage);
  }

  void _onStopShowingSplashImage(
    StopShowingSplashImage event,
    Emitter<AppState> emit,
  ) {
    emit(state.copyWith(showSplashImage: false));
  }
}
