import 'dart:async';

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
import 'package:shamagri_latest_flutter_version/presentation/core/app_widget.dart';
import 'firebase_options.dart';
import 'application/simple_bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  await configureInjection(Environment.prod);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  // FirebaseFirestore.instance.settings = Settings(persistenceEnabled: false);
  runZonedGuarded(() async {
    if (!kIsWeb) {
      if (kDebugMode) {
        await FirebaseCrashlytics.instance
            .setCrashlyticsCollectionEnabled(false);
      } else {
        await FirebaseCrashlytics.instance
            .setCrashlyticsCollectionEnabled(true);
      }
    }
    await BlocOverrides.runZoned(
      () async => runApp(AppWidget()),
      blocObserver: SimpleBlocObserver(),
    );
  }, (error, stackTrace) {
    print('runZonedGuarded: Caught error in my root zone.');
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  }
      // (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
      );
  /*  runZonedGuarded(() {
    runApp(AppWidget());
  }, (error, stackTrace) {
    print('runZonedGuarded: Caught error in my root zone.');
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  }); */
}
