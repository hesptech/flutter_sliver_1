import 'package:flutter/material.dart';
import 'package:flutter_sliver_1/pages/fitness_tracker/avatar.dart';
import 'package:flutter_sliver_1/pages/fitness_tracker/models/activity.dart';
import 'package:flutter_sliver_1/pages/fitness_tracker/models/user.dart';

class ActivityCardHeader extends StatelessWidget {
  const ActivityCardHeader({super.key, this.user, this.activity});
  final User? user;
  final Activity? activity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Avatar(radius: 15),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (user!.displayName != null)
              Text(
                user!.displayName?? '',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            Text(
              activity!.dateTime,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        )
      ],
    );
  }
}