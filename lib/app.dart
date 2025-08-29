import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:merchnest/services/api/auth_service.dart';
import 'package:merchnest/services/api/product_service.dart';
import 'routing/app_router.dart';
import 'routing/app_routes.dart';   // ✅ Import AppRoutes
import 'features/auth/controllers/auth_controller.dart';
import 'features/products/controllers/product_controller.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthController(AuthService())),
        ChangeNotifierProvider(create: (_) => ProductController(ProductService())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Flutter App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        // ✅ Use AppRoutes.splash (not AppRouter.splash)
        initialRoute: AppRoutes.splash,
        routes: AppRouter.routes,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
