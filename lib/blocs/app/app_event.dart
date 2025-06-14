import 'package:equatable/equatable.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object?> get props => [];
}

class StopShowingSplashImage extends AppEvent {
  const StopShowingSplashImage();
}
