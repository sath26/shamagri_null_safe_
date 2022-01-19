import 'package:flutter/material.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user.dart';
// import 'package:shamagri_latest_flutter_version/domain/list_profile/list_profile.dart';

class ErrorListProfileCard extends StatelessWidget {
  final User? profile;

  const ErrorListProfileCard({
    Key? key,
    @required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            Text(
              'Invalid profile, please, contact support',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2!
                  .copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            Text(
              'Details for nerds:',
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            Text(
              profile!.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
