import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Adjust the color scheme and styling as per your design
    return Scaffold(
      // If you want a background color for the whole screen
      backgroundColor: const Color(0xFFF7F3F0),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Top Illustration
              SizedBox(
                height: 200,
                child: Image.asset('assets/login_illustration.png'),
              ),

              const SizedBox(height: 20),
              // Sign in title
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.brown.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Email TextField
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'E-MAIL',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Password TextField
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),

              // Forgot Password?
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Forgot password logic
                  },
                  child: const Text('Forgot Password?'),
                ),
              ),
              const SizedBox(height: 16),

              // Register Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    // Navigate to home screen
                    Get.toNamed('/home');
                  },
                  child: const Text('Register'),
                ),
              ),
              const SizedBox(height: 16),

              // Or sign in with ...
              Text(
                'Or using other method',
                style: TextStyle(color: Colors.grey.shade700),
              ),
              const SizedBox(height: 16),

              // Google / Facebook Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Google
                  GestureDetector(
                    onTap: () {
                      // Sign in with Google logic
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha((0.1 * 255).toInt()),
                            blurRadius: 4,
                            offset: const Offset(2, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/google_icon.png',
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(width: 8),
                          const Text('Sign in with Google'),
                        ],
                      ),
                    ),
                  ),
                  // Facebook
                  GestureDetector(
                    onTap: () {
                      // Sign in with Facebook logic
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade800,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha((0.1 * 255).toInt()),
                            blurRadius: 4,
                            offset: const Offset(2, 2),
                          ),
                        ],
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Sign in with Facebook',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Sign Up prompt
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      // Navigate to a separate Sign Up screen if needed
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.brown.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
