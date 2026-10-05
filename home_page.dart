import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 244, 250),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 228, 221, 221),
        elevation: 0,
        title: const Text(
          '👋 Hello, Abiye',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ready to study?',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Expanded(
                  child: _statCard(
                    icon: '📚',
                    number: '5',
                    title: 'Courses',
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: _statCard(
                    icon: '⏱️',
                    number: '2.5h',
                    title: 'Studied',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Today's Tasks",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            _taskCard(
              completed: false,
              title: 'Learn Dart',
              time: 'Today • 10:00 AM',
            ),
            const SizedBox(height: 12),
            _taskCard(
              completed: false,
              title: 'Flutter Practice',
              time: 'Today • 2:00 PM',
            ),
          ],
        ),
      ),
    );
  }

  Widget _statCard({
    required String icon,
    required String number,
    required String title,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(icon, style: const TextStyle(fontSize: 25)),
          const SizedBox(height: 8),
          Text(
            number,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _taskCard({
    required bool completed,
    required String title,
    required String time,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Icon(
            completed ? Icons.check_circle : Icons.radio_button_unchecked,
            color: completed ? Colors.green : Colors.grey,
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  decoration: completed ? TextDecoration.lineThrough : null,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                time,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}