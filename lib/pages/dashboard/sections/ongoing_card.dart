import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/project.dart';
import 'package:flutter_application_1/theme/decorations.dart';
import 'package:flutter_application_1/theme/dimens.dart';
import 'package:intl/intl.dart';

class OngoingCard extends StatelessWidget {
  final Project project;
  static const double cardWidth = 300;
  static const double cardHeight = 186;
  const OngoingCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      padding: EdgeInsets.fromLTRB(16, 20, 16, 14),
      decoration: AppDecorations.roundedBorderedBoxDecoration(
        context,
        AppDimens.borderRadiusMedium,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 8,
                children: [
                  Container(
                    height: 24,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Text(
                      project.courseCode,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  Container(
                    height: 24,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Text(
                      project.projectType,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  CircularProgressIndicator(
                    constraints: BoxConstraints(
                      minWidth: 32,
                      minHeight: 32,
                      maxWidth: 32,
                      maxHeight: 32,
                    ),
                    value: project.projectWeight / 100,
                    strokeWidth: 5,
                    strokeCap: StrokeCap.round,
                    color: Theme.of(context).colorScheme.outline,
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.outlineVariant,
                  ),
                  Text(
                    project.projectWeight.toStringAsFixed(0),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              project.projectName,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          SizedBox(height: 5),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Progress',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              '${project.projectProgress}%',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          SizedBox(height: 5),
          LinearProgressIndicator(
            minHeight: 13,
            value: 0.8,
            borderRadius: BorderRadius.circular(13),
            color: Theme.of(context).colorScheme.outline,
            backgroundColor: Theme.of(context).colorScheme.outlineVariant,
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              DateFormat('MMM d yyyy').format(project.dueDate),
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
        ],
      ),
    );
  }
}
