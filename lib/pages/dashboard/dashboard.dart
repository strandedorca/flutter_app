import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/dashboard/sections/due_tasks.dart';
import 'package:flutter_application_1/pages/dashboard/sections/ongoing.dart';
import 'package:flutter_application_1/pages/dashboard/sections/upcoming_deadlines.dart';
import 'package:flutter_application_1/pages/dashboard/widgets/appbar.dart';
import 'package:flutter_application_1/theme/dimens.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.horizontalAppPadding,
        ),
        child: Column(
          children: [OnGoingProjects(), UpcomingDeadlines(), DueTasks()],
        ),
      ),
    );
  }
}
