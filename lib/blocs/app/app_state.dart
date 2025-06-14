import 'package:equatable/equatable.dart';

class AppState extends Equatable {
  final bool showSplashImage;

  const AppState({
    this.showSplashImage = true,
  });

  AppState copyWith({
    bool? showSplashImage,
  }) {
    return AppState(
      showSplashImage: showSplashImage ?? this.showSplashImage,
    );
  }

  @override
  List<Object?> get props => [showSplashImage];
}
