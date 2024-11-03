import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:serverpod_playground_client/serverpod_playground_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:serverpod_playground_flutter/app/app.dart';
import 'package:serverpod_playground_flutter/app/app_observer.dart';
import 'package:serverpod_playground_flutter/utilities/app_logger.dart';

var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  AppLogger.instance;
  Bloc.observer = AppObserver();
  runApp(const MyApp());
}
