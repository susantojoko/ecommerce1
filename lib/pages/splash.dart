import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  SplashScreen({required this.navigatorKey});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay untuk simulasi tampilan splash screen selama 2 detik
    Future.delayed(Duration(seconds: 2), () {
      // Pindah ke halaman beranda atau halaman utama aplikasi setelah splash screen
      widget.navigatorKey.currentState!.pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash.jpg',
              width: 200,
            ),
            SizedBox(height: 16.0),
            Text(
              'SAMUN',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
