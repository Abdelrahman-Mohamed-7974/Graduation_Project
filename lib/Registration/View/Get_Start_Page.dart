import 'package:egytale/Registration/View/logn_page.dart';
import 'package:flutter/material.dart';

class GetStartPage extends StatelessWidget {
  const GetStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Background
          SizedBox.expand(
            child: Image.asset(
              "assets/images/background_get_start.png",
              fit: BoxFit.cover,
            ),
          ),

          /// Top Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset("assets/images/The_key_to_life.png"),
          ),

          /// Title
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: const Text(
              "WELCOME TO\nEGYTALE",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "CinzelDecorative",
                fontSize: 36,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                color: Colors.white,
              ),
            ),
          ),

          /// Get Started Button
          Positioned(
            top: 490,
            left: 80,
            right: 80,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9B6135),
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "CinzelDecorative",
                  color: Colors.white,
                ),
              ),
            ),
          ),

          /// Bottom Image
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/background_get_start2.png",
              fit: BoxFit.cover,
              width: double.infinity,
              height: 320,
            ),
          ),
        ],
      ),
    );
  }
}