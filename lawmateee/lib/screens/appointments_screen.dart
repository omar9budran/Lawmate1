import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointments'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => Get.toNamed('/new-appointment'),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5, 
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.brown.withAlpha((0.1 * 255).toInt()),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'Upcoming',
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'March ${15 + index}, 2024',
                        style: const TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Consultation with John Smith',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '2:00 PM - 3:00 PM',
                    style: TextStyle(color: Colors.black54),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/lawyer_placeholder.png'),
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John Smith',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Corporate Law Specialist',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.video_call),
                        onPressed: () {},
                        color: Colors.brown,
                      ),
                      IconButton(
                        icon: const Icon(Icons.chat_outlined),
                        onPressed: () {},
                        color: Colors.brown,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}