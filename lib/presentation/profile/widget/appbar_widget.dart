import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
import 'package:shamagri_latest_flutter_version/themes.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/utils/user_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

AppBar buildAppBar(BuildContext context) {
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    leading: BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      ThemeSwitcher(
        builder: (context) => IconButton(
          icon: Icon(icon),
          onPressed: () {
            final theme = isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;

            // final switcher = ThemeSwitcher.of(context)!;
            final switcher = ThemeSwitcher.of(context);
            switcher.changeTheme(theme: theme);
          },
        ),
      ),
      IconButton(
        icon: Icon(
          Icons.menu,
          // color: Colors.white,
        ),
        onPressed: () {
          // do something
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: new Icon(Icons.logout),
                      title: new Text('Sign Out'),
                      onTap: () {
                        // Navigator.pop(context);
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.signedOut());
                      },
                    ),
                    ListTile(
                      leading: new Icon(Icons.settings),
                      title: new Text('Setting'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: new Icon(Icons.videocam),
                      title: new Text('Video'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: new Icon(Icons.share),
                      title: new Text('Share'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              });
        },
      ),
    ],
  );
}
