import 'package:amgad_business_card/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialMediaRoute extends StatelessWidget {
  const SocialMediaRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor.withOpacity(0.4),
      appBar: AppBar(
        title: const Text('Social Media'),
        backgroundColor: primaryColor,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Social Media',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'GitHub:',
                  style: TextStyle(
                    fontSize: 18,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'https://github.com/AmgadMahmoud',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'LinkedIn:',
                  style: TextStyle(
                    fontSize: 18,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'https://www.linkedin.com/in/amgad-mahmoud/',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Youtube:',
                  style: TextStyle(
                    fontSize: 18,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'https://www.youtube.com/@AmgadMahmoudCAmgadMahmoud',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
