import 'dart:async';

import 'package:flutter/material.dart';

import 'package:meals_app/app/ui/utils/colors.dart';

import '../../molecules/molecules.dart';

class SplashViewCb extends StatefulWidget {
  const SplashViewCb({super.key});

  @override
  State<SplashViewCb> createState() => _SplashViewCbState();
}

class _SplashViewCbState extends State<SplashViewCb> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: mealsColors.brandPrimaryMat,
      body: Center(
        child: LittleSplashCb(),
      ),
    );
  }
}
