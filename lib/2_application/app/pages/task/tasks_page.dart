import 'package:flutter/material.dart';
import 'package:todo_app/2_application/core/page_config.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});
  static const pageConfig = PageConfig(
    name: 'tasks',
    icon: Icons.task_alt_rounded,
    child: TasksPage(),
  );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
