class Project {
  final String courseCode;
  final String projectType;
  final String projectName;
  final double projectWeight;
  final double projectProgress;
  final DateTime dueDate;
  final String colorCode;

  Project({
    required this.courseCode,
    required this.projectType,
    required this.projectName,
    required this.projectWeight,
    required this.projectProgress,
    required this.dueDate,
    required this.colorCode,
  });

  static List<Project> getProjects() {
    return [
      Project(
        courseCode: 'COMP1350',
        projectType: 'Group Project',
        projectName: 'Conceptual Modeling',
        projectWeight: 40,
        projectProgress: 80,
        dueDate: DateTime(2025, 10, 9),
        colorCode: '0xFFffca42',
      ),
      Project(
        courseCode: 'PHIL1037',
        projectType: 'Assignment',
        projectName: 'Standardisation Task',
        projectWeight: 30,
        projectProgress: 30,
        dueDate: DateTime(2025, 11, 15),
        colorCode: '0xFFffca42',
      ),
      Project(
        courseCode: 'COMP1000',
        projectType: 'Quiz',
        projectName: 'Programming Quiz',
        projectWeight: 30,
        projectProgress: 70,
        dueDate: DateTime(2025, 12, 1),
        colorCode: '0xFFffca42',
      ),
    ];
  }
}
