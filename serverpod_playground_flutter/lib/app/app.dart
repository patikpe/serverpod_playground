import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:serverpod_playground_flutter/app/cubit/app_cubit.dart';
import 'package:serverpod_playground_flutter/app/router/app_router.dart';
import 'package:serverpod_playground_flutter/app/theme/theme.dart';
import 'package:serverpod_playground_flutter/l10n/generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          switch (state.status) {
            case AppStatus.loading:
              SchedulerBinding.instance.addPostFrameCallback((_) {
                context.read<AppCubit>().getAppConfig();
                FlutterNativeSplash.remove();
              });
              return const Placeholder();
            case AppStatus.loaded:
              return MaterialApp.router(
                title: state.appName,
                theme: FPTheme.lightTheme(state.mainColor),
                darkTheme: FPTheme.darkTheme(state.mainColor),
                themeMode: ThemeMode.system,
                routerConfig: AppRouter.router,
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
              );
            default:
              return const Placeholder();
            //TODO: Implement the default case for general errors
          }
        },
      ),
    );
  }
}
