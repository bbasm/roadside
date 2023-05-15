import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:roadside/pages/get_started_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GetStartedPage()),
            ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: CustomPaint(
                  size: Size(
                      300,
                      (300 * 0.5833333333333334)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter12(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Center(
                  child: Container(
                      width: 250,
                      height: 250,
                      child: Image.asset('lib/images/roadside_logo.png')),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomPaint(
                    size: Size(
                        1000,
                        (500 * 0.5833333333333334)
                            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = ui.Color.fromARGB(255, 121, 31, 31)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.0714286);
    path0.quadraticBezierTo(size.width * 0.5775000, size.height * 0.1264286,
        size.width * 0.5000000, size.height * 0.9942857);
    path0.lineTo(size.width * 0.0008333, size.height * 0.9957143);
    path0.quadraticBezierTo(size.width * 0.0006250, size.height * 0.7646429, 0,
        size.height * 0.0714286);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter12 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = ui.Color.fromARGB(255, 193, 70, 70)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.5000000, size.height * 0.9942857);
    path0.lineTo(size.width * 0.0008333, size.height * 0.9957143);
    path0.lineTo(size.width * 0.5000000, size.height * 0.9942857);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = ui.Color.fromARGB(255, 194, 158, 158)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(size.width, size.height * -0.0028571);
    path1.lineTo(size.width * 1.0008333, size.height * 0.9828571);
    path1.quadraticBezierTo(size.width * 0.2854167, size.height * 1.0100000,
        size.width * 0.5058333, 0);
    path1.quadraticBezierTo(size.width * 0.6293750, size.height * -0.0007143,
        size.width, size.height * -0.0028571);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
