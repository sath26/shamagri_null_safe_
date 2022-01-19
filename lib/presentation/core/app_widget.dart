import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/utils/user_preferences.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart'
    as app_router;
import 'package:shamagri_latest_flutter_version/presentation/splash/splash.dart';
import 'package:shamagri_latest_flutter_version/themes.dart';

// import 'package:flutter_uxcam/flutter_uxcam.dart';

class AppWidget extends StatelessWidget {
  final user = UserPreferences.myUser;
  // FirebaseApp secondaryApp = Firebase.app('SecondaryApp');
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  // FirebaseAnalytics analytics = FirebaseAnalytics.instanceFor(app: app);
  final _appRouter = app_router.Router();
  @override
  Widget build(BuildContext context) {
    // FlutterUxcam.optIntoSchematicRecordings();
    // FlutterUxcam.startWithKey("eb3t54lf1lgvx5g");
    // GlobalKey<NavigatorState>? navigatorKey;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: ThemeProvider(
        initTheme:
            user.isDarkMode ?? true ? MyThemes.darkTheme : MyThemes.darkTheme,
        child: Builder(
          builder: (context) => MaterialApp(
            title: 'Shamagri - bill sharing app',
            debugShowCheckedModeBanner: false,
            home: MaterialApp.router(
              routerDelegate: _appRouter.delegate(
                  // initialRoutes: [AutoRouter.of(context).SplashScreenRoute()],
                  // navigatorObservers: [
                  //   FirebaseAnalyticsObserver(analytics: analytics),
                  // ]
                  ),
              routeInformationParser: _appRouter.defaultRouteParser(),
              // navigatorKey: navigatorKey,
              // router: app_router.Router(),
              // observers: [
              //   FirebaseAnalyticsObserver(analytics: analytics),
              // ],
            ),
            theme: ThemeData.dark(),
            navigatorObservers: [
              FirebaseAnalyticsObserver(analytics: analytics),
            ],
          ),
        ),
      ),
    );
  }
}
