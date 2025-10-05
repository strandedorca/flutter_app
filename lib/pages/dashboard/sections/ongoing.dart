import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/project.dart';
import 'package:flutter_application_1/pages/dashboard/sections/ongoing_card.dart';
import 'package:flutter_application_1/pages/dashboard/widgets/section_title.dart';

class OnGoingProjects extends StatefulWidget {
  OnGoingProjects({super.key});

  @override
  State<OnGoingProjects> createState() => _OnGoingProjectsState();
}

class _OnGoingProjectsState extends State<OnGoingProjects> {
  List<Project> projects = [];

  void _getProjects() {
    projects = Project.getProjects();
  }

  @override
  Widget build(BuildContext context) {
    _getProjects();
    return Column(
      children: [
        SectionTitle(title: 'Ongoing Projects'),
        SizedBox(
          height: OngoingCard.cardHeight,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 16),
            itemCount: projects.length,
            itemBuilder: (context, index) {
              return OngoingCard(project: projects[index]);
            },
          ),
        ),
      ],
    );
  }
}
