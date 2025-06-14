import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<ThemeModeChanged>(_onThemeModeChanged);
  }

  void _onThemeModeChanged(
    ThemeModeChanged event,
    Emitter<ThemeState> emit,
  ) {
    emit(state.copyWith(themeMode: event.themeMode));
  }
}
