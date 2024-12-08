import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:serverpod_playground_client/serverpod_playground_client.dart';
import 'package:serverpod_playground_flutter/main.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState());

  final _log = Logger('AppCubit');

  void getAppConfig() async {
    try {
      AppConfiguration appConfiguration =
          await client.appConfiguration.getAppConfiguration();
      emit(state.copyWith(
        status: AppStatus.loaded,
        appName: appConfiguration.name,
        mainColor: Color(
          int.parse(appConfiguration.color.replaceFirst('#', '0xFF')),
        ),
      ));
    } catch (e) {
      _log.warning("Could not get AppConfig data, setting default.", e);
      emit(state.copyWith(status: AppStatus.loaded));
    }
  }
}
