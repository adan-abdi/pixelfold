import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();
  final _connectivityController = StreamController<bool>.broadcast();

  Stream<bool> get connectivityStream => _connectivityController.stream;

  ConnectivityService() {
    print('Initializing ConnectivityService');
    _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      print('Connectivity changed: $result');
      _connectivityController.add(result != ConnectivityResult.none);
    });
  }

  Future<bool> checkConnectivity() async {
    print('Checking connectivity...');
    try {
      final result = await _connectivity.checkConnectivity();
      print('Connectivity result: $result');
      return result != ConnectivityResult.none;
    } catch (e) {
      print('Error checking connectivity: $e');
      return false;
    }
  }

  void dispose() {
    print('Disposing ConnectivityService');
    _connectivityController.close();
  }
}
