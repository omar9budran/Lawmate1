import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _userName = '';
  String _userEmail = '';

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final userData = await FirebaseFirestore.instance
          .collection('Users')
          .doc(user.uid)
          .get();
      
      if (userData.exists) {
        setState(() {
          _userName = userData.data()?['Name'] ?? '';
          _userEmail = userData.data()?['Email'] ?? '';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacementNamed('/home');
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile_placeholder.png'),
              ),
              const SizedBox(height: 16),
              Text(
                _userName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                _userEmail,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 32),
              _buildProfileMenuItem(
                icon: Icons.settings,
                title: 'Account Setting',
                onTap: () {},
              ),
              _buildProfileMenuItem(
                icon: Icons.language,
                title: 'Language',
                onTap: () {},
              ),
              _buildProfileMenuItem(
                icon: Icons.info_outline,
                title: 'About us',
                onTap: () {},
              ),
              _buildProfileMenuItem(
                icon: Icons.calendar_month,
                title: 'subscription',
                onTap: () {},
              ),
              _buildProfileMenuItem(
                icon: Icons.logout,
                title: 'Logout',
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  if (!mounted) return;
                  Navigator.of(context).pushNamedAndRemoveUntil('/landing', (route) => false);
                },
                isDestructive: true,
              ),
            ],
          ),
        ),
      )
    );
  }

  Widget _buildProfileMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isDestructive = false,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: isDestructive ? Colors.red : Colors.brown,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isDestructive ? Colors.red : Colors.black87,
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}