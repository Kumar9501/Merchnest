// lib/routing/app_router.dart
import 'package:flutter/material.dart';
import 'package:merchnest/features/auth/screens/home_screen.dart';
import 'package:merchnest/features/auth/screens/product_detail_screen.dart';
import 'package:merchnest/features/auth/screens/product_list_screen.dart';
import 'package:merchnest/features/auth/screens/profile_screen.dart';
import 'app_routes.dart';  // ✅ import constants

import '../features/auth/screens/splash_screen.dart';
import '../features/auth/screens/login_screen.dart';
import '../features/products/models/product.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.splash: (_) => const SplashScreen(),
    AppRoutes.login: (_) => const LoginScreen(),
    AppRoutes.home: (_) => const HomeScreen(),
    AppRoutes.products: (_) => const ProductListScreen(),
    AppRoutes.profile: (_) => const ProfileScreen(),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    if (settings.name == AppRoutes.productDetail && settings.arguments is Product) {
      final product = settings.arguments as Product;
      return MaterialPageRoute(
        builder: (_) => ProductDetailScreen(product: product),
        settings: settings,
      );
    }
    return null;
  }
}
