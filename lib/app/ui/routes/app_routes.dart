import 'package:flutter/material.dart';
import 'package:meals_app/app/ui/screens/homeCategories/homeCategoriesCb.dart';
import 'package:meals_app/app/ui/screens/splash/splashViewCb.dart';
import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.splash: (context) => const SplashViewCb(),
    Routes.home: (context) => const HomeCategoriesCb(),
  };
}
