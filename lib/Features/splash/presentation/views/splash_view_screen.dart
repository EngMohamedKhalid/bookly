import 'package:bookly/Features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashViewScreen extends StatelessWidget {
  const SplashViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
         body: SplashViewBody(),
    );
  }
}
