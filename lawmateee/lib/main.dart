import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_app/screens/chat_ai_screen.dart';
import 'package:my_app/screens/offices_screen.dart';
import 'package:my_app/screens/payment_screen.dart';
import 'package:my_app/screens/profile_screen.dart';
import 'screens/landing_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/home_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/role_selection_screen.dart';
import 'screens/subscription_plan_screen.dart';
import 'screens/payment_success_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Figma Sample',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: const Color(0xFFF7F3F0),
      ),
      initialRoute: '/landing',
      routes: {
        '/landing': (context) => const LandingScreen(),
        '/signin': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(selectedRole: 'user',),
        '/home': (context) => const HomeScreen(),
        '/role-selection': (context) => const RoleSelectionScreen(),
        "/offices" : (context) => const OfficesScreen(),
        "/profile" : (context) => const ProfileScreen(),
        "/chat" : (context) => const ChatAIScreen(),
        '/subscription': (context) => SubscriptionPlanScreen(
          role: ModalRoute.of(context)?.settings.arguments as String? ?? '',
        ),
        '/payment': (context) => const PaymentScreen(),
        '/payment-success': (context) => const PaymentSuccessScreen(
          cardHolderName: '',
          expiryDate: '',
          lastFourDigits: '',
        ),
      },
    );
  }
}
