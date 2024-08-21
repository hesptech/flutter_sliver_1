import 'package:flutter_sliver_1/pages/fitness_tracker/models/split.dart';


class Activity {
  const Activity({
    required this.dateTime,
    required this.distance,
    required this.pace,
    required this.time,
    this.description,
    this.splits,
  });
  final String dateTime;
  final String distance;
  final String pace;
  final String time;
  final String? description;
  final List<Split>? splits;
}