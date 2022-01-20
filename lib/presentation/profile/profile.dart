import 'dart:io';
import 'dart:math';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/profile/profile_bloc.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/edit_profile.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/profile_overview_body_widget.dart';
import 'package:path/path.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/model/user_model.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';

import 'package:shamagri_latest_flutter_version/presentation/profile/utils/user_preferences.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/widget/appbar_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/widget/button_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/widget/profile_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/widget/textfield_widget.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shamagri_latest_flutter_version/presentation/profile/widget/numbers_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  VoidCallback? _showPersistantBottomSheetCallBack;
  @override
  void initState() {
    super.initState();
    _showPersistantBottomSheetCallBack = _showBottomSheet;
  }

  void _showBottomSheet() {
    setState(() {
      _showPersistantBottomSheetCallBack = null;
    });

    _scaffoldKey.currentState!
        .showBottomSheet((context) {
          return new Container(
            height: 200.0,
            color: Colors.teal[100],
            child: Center(
              child: Text(
                "Drag Downwards Or Back To Dismiss Sheet",
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          );
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              _showPersistantBottomSheetCallBack = _showBottomSheet;
            });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    var logger = Logger();
    logger.wtf(user.name);
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            // create: (context) => UnitsBloc()..add(LoadUnits()),
            create: (context) =>
                getIt<ProfileBloc>()..add(const ProfileEvent.started()),
          ),
        ],
        child: MultiBlocListener(
            listeners: [
              BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.maybeMap(
                    unauthenticated: (_) =>
                        AutoRouter.of(context).replace(SignInPageRoute()),
                    orElse: () {},
                  );
                  /*   */
                },
              ),
            ],
            child: ThemeSwitchingArea(
              child: Builder(
                builder: (context) => WillPopScope(
                  onWillPop: () async {
                    // ExtendedNavigator.of(context).replace(Routes.homeScreen);
                    bool? result = await context.router.pop(context);
                    return result;
                  },
                  child: Scaffold(
                    appBar: buildAppBar(context),
                    body: ProfileOverviewBody(),
                  ),
                ),
              ),
            )));
  }
}
