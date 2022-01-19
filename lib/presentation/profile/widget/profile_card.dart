import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/edit_profile.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/widget/button_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/widget/numbers_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/profile/widget/profile_widget.dart';
// import 'package:kt_dart/collection.dart';

class ProfileCard extends StatelessWidget {
  final User? user;

  const ProfileCard({
    Key? key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileWidget(
          imagePath: user!.photoUrl!.getOrCrash(),
          onClicked: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => EditProfilePage()),
            );
          },
        ),
        // const SizedBox(height: 24),
        buildName(user!),
        // const SizedBox(height: 24),
        Center(child: buildUpgradeButton()),
        // const SizedBox(height: 24),
        NumbersWidget(),
        // const SizedBox(height: 48),
        // buildAbout(user),
      ],
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.displayName!.getOrCrash(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email!.getOrCrash(),
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {},
      );
}
