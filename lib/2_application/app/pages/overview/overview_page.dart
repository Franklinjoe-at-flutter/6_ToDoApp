import 'package:flutter/material.dart';
import 'package:todo_app/2_application/core/page_config.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  static const pageConfig = PageConfig(
    name: 'overview',
    icon: Icons.work_history_rounded,
    child: OverviewPage(),
  );

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.tealAccent,);
  }
}
