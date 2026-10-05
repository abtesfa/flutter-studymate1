import 'package:flutter/material.dart';

class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Courses'),
        
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Learning',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            _CourseCard(
              icon: Icons.favorite,
              iconColor: Colors.blue,
              title: 'Dart Programming',
              progress: 0.70,
              lessons: '12 lessons',
            ),

            const SizedBox(height: 16),

            _CourseCard(
              icon: Icons.circle,
              iconColor: Colors.purple,
              title: 'Flutter Development',
              progress: 0.50,
              lessons: '20 lessons',
            ),

            const SizedBox(height: 16),

            _CourseCard(
              icon: Icons.circle,
              iconColor: Colors.green,
              title: 'UI/UX Design',
              progress: 0.80,
              lessons: '15 lessons',
            ),
          ],
        ),
      ),
    );
  }
}

class _CourseCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final double progress;
  final String lessons;

  const _CourseCard({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.progress,
    required this.lessons,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: iconColor,
                  size: 28,
                ),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Text(
              'Progress: ${(progress * 100).toInt()}%',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 8),

            LinearProgressIndicator(
              value: progress,
              minHeight: 8,
              borderRadius: BorderRadius.circular(10),
              backgroundColor: Colors.grey.shade200,
              color: iconColor,
            ),

            const SizedBox(height: 16),

            Text(
              lessons,
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}