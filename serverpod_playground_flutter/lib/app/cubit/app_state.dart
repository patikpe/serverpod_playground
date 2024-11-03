part of 'app_cubit.dart';

enum AppStatus {
  loading,
  loaded,
  error,
}

final class AppState extends Equatable {
  final AppStatus status;
  final String appName;
  final Color mainColor;

  const AppState({
    this.status = AppStatus.loading,
    this.appName = 'My Flutter Playground',
    this.mainColor = Colors.blue,
  });

  AppState copyWith({
    AppStatus? status,
    String? appName,
    Color? mainColor,
  }) {
    return AppState(
      status: status ?? this.status,
      appName: appName ?? this.appName,
      mainColor: mainColor ?? this.mainColor,
    );
  }

  @override
  List<Object> get props => [
        status,
        appName,
        mainColor,
      ];
}
