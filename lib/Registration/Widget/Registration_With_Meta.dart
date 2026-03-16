import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RegistrationWithMeta extends StatelessWidget {
  const RegistrationWithMeta({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Google Sign-in Link
            _buildCircularAssetIconButton(
              'assets/images/google.png',
              () {
                _launchURL('https://accounts.google.com/signin');
              },
            ),
            const SizedBox(width: 25),
            // Twitter (X) Sign-in Link
            _buildCircularAssetIconButton(
              'assets/images/twitter.png',
              () {
                _launchURL('https://x.com/i/flow/login');
              },
            ),
            const SizedBox(width: 25),
            // Facebook Sign-in Link
            _buildCircularAssetIconButton(
              'assets/images/facebook.png',
              () {
                _launchURL('https://www.facebook.com/login');
              },
            ),
          ],
        ),
      ],
    );
  }

  /// Function to open URL
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  /// Circular Social Button
  Widget _buildCircularAssetIconButton(
      String assetPath, VoidCallback onTap) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xFFE4D3A1),
              width: 1.7,
            ),
          ),
          child: Image.asset(
            assetPath,
            height: 44,
          ),
        ),
      ),
    );
  }
}
