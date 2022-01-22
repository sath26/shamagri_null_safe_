import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logger/logger.dart';
import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';

class SplashScreen extends StatelessWidget {
  Logger logger = Logger();
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        logger.i('listener called');

        state.map(
            initial: (_) {
              logger.i('initial');
            },
            authenticated: (_) => {
                  logger.i('authenticated'),
                  AutoRouter.of(context).replace(HomeScreenRoute()),
                },
            unauthenticated: (_) {
              logger.i('unauthenticated');

              return AutoRouter.of(context).replace(SignInPageRoute());
            });
      },
      child: Scaffold(
        body: Center(
          child: SvgPicture.asset(
            "images/logo-small-less-white.svg",
            height: 200.0,
            width: 200.0,
            // color: Colors.green,
          ),
        ),
      ),
    );
  }
}
