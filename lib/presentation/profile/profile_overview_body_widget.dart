import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/profile/profile_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/edit_profile.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/model/user_model.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/utils/user_preferences.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/widget/button_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/widget/critical_profile_failure_display_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/widget/error_profile_card.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/widget/numbers_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/widget/profile_card.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/widget/profile_widget.dart';

class ProfileOverviewBody extends StatelessWidget {
  // final user = UserPreferences.myUser;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final user = state.users[index];
                if (user.failureOption.isSome()) {
                  return ErrorListProfileCard(profile: user);
                } else {
                  return ProfileCard(user: user);
                }
              },
              itemCount: state.users.length,
            );
          },
          loadFailure: (state) {
            return CriticalFailureProfileDisplay(
              failure: state.userFailure,
            );
          },
        );
      },
    );
  }

/* 
  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      ); */
}
