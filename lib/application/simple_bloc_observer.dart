// import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

// We can extend `BlocObserver` and override `onTransition` and `onError`
// in order to handle transitions and errors from all Blocs.
class SimpleBlocObserver extends BlocObserver {
  var logger = Logger();
  @override
  void onEvent(Bloc bloc, Object? event) {
    logger.d(event.toString());
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // logger.i(transition.currentState.toString());
    logger.i("1 currentState: " + transition.currentState.toString());
    logger.i("2 event:   " + transition.event.toString());
    logger.i("3 nextState:  " + transition.nextState.toString());

    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase cubit, Object error, StackTrace stackTrace) {
    logger.e(error.toString());
    super.onError(cubit, error, stackTrace);
  }

  void printTransition(String text) {
    // text.split(",").map((String a) => print('\x1B[33m$a\x1B[0m'));
    print('\x1B[33m$text\x1B[0m');
  }

  void printEvent(String text) {
    print('\x1B[37m$text\x1B[0m');
  }

  void printError(String text) {
    print('\x1B[0m$text\x1B[0m');
  }
}
