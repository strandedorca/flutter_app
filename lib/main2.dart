// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Task Management Dashboard',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
//         useMaterial3: true,
//         fontFamily: 'Inter',
//       ),
//       home: const DashboardScreen(),
//     );
//   }
// }

// class DashboardScreen extends StatelessWidget {
//   const DashboardScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F5F0),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Header
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         width: 60,
//                         height: 60,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           border: Border.all(color: Colors.black, width: 2),
//                           color: Colors.white,
//                         ),
//                         child: const Icon(Icons.person, size: 30),
//                       ),
//                       const SizedBox(width: 16),
//                       const Text(
//                         'Welcome, Noah!',
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Container(
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Colors.black, width: 2),
//                       color: Colors.white,
//                     ),
//                     child: const Icon(Icons.hexagon_outlined, size: 24),
//                   ),
//                 ],
//               ),
//             ),
//             const Divider(height: 1, color: Colors.black),
//             // Scrollable content
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(height: 24),
//                     // Ongoing Projects Section
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text(
//                             'Ongoing Projects',
//                             style: TextStyle(
//                               fontSize: 26,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () {},
//                             child: const Text(
//                               'See All',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.black54,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     // Horizontal scrolling projects
//                     SizedBox(
//                       height: 200,
//                       child: ListView(
//                         scrollDirection: Axis.horizontal,
//                         padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                         children: [
//                           ProjectCard(
//                             course: 'COMP1000',
//                             tag: 'Group Project',
//                             number: '40',
//                             title: 'Conceptual Modelling',
//                             progress: 0.8,
//                             deadline: 'Oct 9 2025',
//                           ),
//                           const SizedBox(width: 16),
//                           ProjectCard(
//                             course: 'PHIL1037',
//                             tag: '',
//                             number: '',
//                             title: 'Standardisation',
//                             progress: 0.6,
//                             deadline: 'Oct 19 2025',
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 32),
//                     // Upcoming Deadlines Section
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text(
//                             'Upcoming Deadlines',
//                             style: TextStyle(
//                               fontSize: 26,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () {},
//                             child: const Text(
//                               'See All',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.black54,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                       child: Wrap(
//                         spacing: 12,
//                         runSpacing: 12,
//                         children: [
//                           DeadlineChip(
//                             title: 'Programming Quiz',
//                             date: 'Sept 19 2025',
//                           ),
//                           DeadlineChip(
//                             title: 'Conceptual Modelli...',
//                             date: 'Oct 9 2025',
//                           ),
//                           DeadlineChip(
//                             title: 'Standardisation Task',
//                             date: 'Oct 19 2025',
//                           ),
//                           DeadlineChip(
//                             title: 'Cyber Hygiene Assi...',
//                             date: 'Nov 1 2025',
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 32),
//                     // Due Tasks Section
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text(
//                             'Due Tasks',
//                             style: TextStyle(
//                               fontSize: 26,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () {},
//                             child: const Text(
//                               'See All',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.black54,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     // Vertically scrolling tasks
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.black, width: 2),
//                           borderRadius: BorderRadius.circular(16),
//                           color: Colors.white,
//                         ),
//                         child: Column(
//                           children: [
//                             TaskItem(
//                               title: "Standardise Whitehouse's argument",
//                               subtitle: 'Standardisation Task - PHIL1037',
//                               date: '09 Sept',
//                               isLast: false,
//                             ),
//                             TaskItem(
//                               title: 'Write business rules',
//                               subtitle: 'Conceptual Modelling - COMP1350',
//                               date: '14 Sept',
//                               isLast: false,
//                             ),
//                             TaskItem(
//                               title: 'Draw ER Diagram',
//                               subtitle: 'Conceptual Modelling - COMP1350',
//                               date: 'Today',
//                               isLast: false,
//                             ),
//                             TaskItem(
//                               title: 'Craft your own standardised coun...',
//                               subtitle: '',
//                               date: 'Today',
//                               isLast: true,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 32),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProjectCard extends StatelessWidget {
//   final String course;
//   final String tag;
//   final String number;
//   final String title;
//   final double progress;
//   final String deadline;

//   const ProjectCard({
//     super.key,
//     required this.course,
//     required this.tag,
//     required this.number,
//     required this.title,
//     required this.progress,
//     required this.deadline,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.black, width: 2),
//         borderRadius: BorderRadius.circular(20),
//         color: const Color(0xFFE8E8E0),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Container(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16,
//                   vertical: 8,
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.black26,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Text(
//                   course,
//                   style: const TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//               if (tag.isNotEmpty) ...[
//                 const SizedBox(width: 8),
//                 Container(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 16,
//                     vertical: 8,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.black26,
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Text(
//                     tag,
//                     style: const TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ],
//               if (number.isNotEmpty) ...[
//                 const Spacer(),
//                 Container(
//                   width: 36,
//                   height: 36,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.white70,
//                   ),
//                   child: Center(
//                     child: Text(
//                       number,
//                       style: const TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ],
//           ),
//           const SizedBox(height: 16),
//           Text(
//             title,
//             style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
//           ),
//           const Spacer(),
//           const Text(
//             'Progress',
//             style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
//           ),
//           const SizedBox(height: 8),
//           Row(
//             children: [
//               Expanded(
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   child: LinearProgressIndicator(
//                     value: progress,
//                     backgroundColor: Colors.black26,
//                     valueColor: const AlwaysStoppedAnimation<Color>(
//                       Colors.black87,
//                     ),
//                     minHeight: 12,
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 12),
//               Text(
//                 '${(progress * 100).toInt()}%',
//                 style: const TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Text(
//               deadline,
//               style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class DeadlineChip extends StatelessWidget {
//   final String title;
//   final String date;

//   const DeadlineChip({super.key, required this.title, required this.date});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: (MediaQuery.of(context).size.width - 52) / 2,
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.black, width: 2),
//         borderRadius: BorderRadius.circular(16),
//         color: Colors.white,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//           ),
//           const SizedBox(height: 4),
//           Text(
//             date,
//             style: const TextStyle(fontSize: 14, color: Colors.black54),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TaskItem extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final String date;
//   final bool isLast;

//   const TaskItem({
//     super.key,
//     required this.title,
//     required this.subtitle,
//     required this.date,
//     required this.isLast,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         border: isLast
//             ? null
//             : const Border(bottom: BorderSide(color: Colors.black, width: 2)),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           children: [
//             Container(
//               width: 24,
//               height: 24,
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black, width: 2),
//                 borderRadius: BorderRadius.circular(4),
//               ),
//             ),
//             const SizedBox(width: 12),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   if (subtitle.isNotEmpty) ...[
//                     const SizedBox(height: 2),
//                     Text(
//                       subtitle,
//                       style: const TextStyle(
//                         fontSize: 14,
//                         color: Colors.black54,
//                       ),
//                     ),
//                   ],
//                 ],
//               ),
//             ),
//             Text(
//               date,
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//                 color: date == 'Today' ? Colors.red : Colors.red.shade700,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
