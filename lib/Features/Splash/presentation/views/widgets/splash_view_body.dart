import 'package:bookly/Features/Splash/presentation/views/onboard.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String id = 'SplashScreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    navigateToHome();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Rectangle 20.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(50.0),
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/Untitled-1 1.png",
              height: 200,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 500,
            ),
            alignment: Alignment.bottomCenter,
            child: Lottie.asset('assets/images/animation_lmw239zq.json',
                width: 300, height: 300),
          ),
        ],
      ),
    );
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => onboardView()));
      },
    );
  }
}
