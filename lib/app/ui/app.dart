import 'package:flutter/material.dart';
import 'package:meals_app/app/ui/routes/app_routes.dart';
import 'package:meals_app/app/ui/routes/routes.dart';

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      routes: appRoutes,
    );
  }
}
