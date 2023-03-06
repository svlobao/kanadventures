import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  final int maxTasks;
  final int tasksCompleted;

  const ProgressBar({
    Key? key,
    required this.maxTasks,
    required this.tasksCompleted,
  }) : super(
          key: key,
        );

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  int tasksCompleted = 0;
  int maxTasks = 1;

  @override
  void initState() {
    tasksCompleted = widget.tasksCompleted;
    maxTasks = widget.maxTasks;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(value: tasksCompleted / maxTasks);
  }
}
