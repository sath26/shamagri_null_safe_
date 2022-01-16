import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => {},
          // ExtendedNavigator.of(context).replace(Routes.homeScreen),
          unauthenticated: (_) =>
              AutoRouter.of(context).replace(SignInPageRoute()),
        );
      },
      child: Scaffold(
        body: Center(
          child: SvgPicture.asset(
            "images/logo-small-less-white.svg",
            height: 100.0,
            width: 100.0,
            // color: Colors.green,
          ),
        ),
      ),
    );
  }
}
