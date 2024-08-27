import 'package:dars_8_rtsep/ui/splash/create_an_account.dart';
import 'package:flutter/material.dart';

class BecomeMasterChefScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          // Chapga surilganda (o'ngdan chapga)
          if (details.primaryVelocity! < 0) {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    // BecomeMasterChefScreen(),
                    CreateAnAccount(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = Offset(1.0, 0.0);
                  const end = Offset.zero;
                  const curve = Curves.ease;

                  var tween = Tween(begin: begin, end: end).chain(
                    CurveTween(curve: curve),
                  );

                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                },
              ),
            );
          }
        },
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Background image with darkened bottom filter
              Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/fon/fon4.png',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Colors.black.withOpacity(1),
                          Colors.black.withOpacity(0.3),
                          Colors.transparent
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Text(
                          "Become a\nMaster Chef",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          // textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur  elit,\nsed do eiusmod tempor incididunt ut.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Image(
                    image: AssetImage("assets/yuklash/yuklash3.png"),
                    height: 100, // Resimning o'lchamini to'g'irlandi
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
