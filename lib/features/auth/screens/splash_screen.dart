import 'package:flutter/material.dart';
import 'package:merchnest/routing/app_routes.dart'; // ✅ Import AppRoutes
import '../../auth/controllers/auth_controller.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final loggedIn = context.read<AuthController>().isLoggedIn;
      Navigator.pushReplacementNamed(
        context,
        loggedIn ? AppRoutes.home : AppRoutes.login, // ✅ FIXED
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
