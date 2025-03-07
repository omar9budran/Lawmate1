import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LawMate'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => Get.toNamed('/profile'),
          ),
        ],
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(24),
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          _buildMenuItem(
            icon: Icons.calendar_today,
            title: 'Appointments',
            onTap: () => Get.toNamed('/appointments'),
          ),
          _buildMenuItem(
            icon: Icons.chat,
            title: 'Chat AI',
            onTap: () => Get.toNamed('/chat-ai'),
          ),
          _buildMenuItem(
            icon: Icons.business,
            title: 'Law Offices',
            onTap: () => Get.toNamed('/offices'),
          ),
          _buildMenuItem(
            icon: Icons.payment,
            title: 'Payments',
            onTap: () => Get.toNamed('/payments'),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: Colors.brown),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}