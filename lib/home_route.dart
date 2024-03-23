import 'package:amgad_business_card/colors/colors.dart';
import 'package:amgad_business_card/social_media_route.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor.withOpacity(0.4),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(20),
          child: Column(
            children: [
              Opacity(
                opacity: 0.9,
                child: Image.asset(
                  'assets/images/amgad_photo.jpg',
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Amgad Mahmoud',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Software Engineer',
                style: TextStyle(
                  fontSize: 20,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 20,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'tel: +201154222736',
                style: TextStyle(
                  fontSize: 20,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'email: amgad.mahmoud.abdallah@gmail.com',
                style: TextStyle(
                  fontSize: 20,
                  color: primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const SocialMediaRoute()));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Social Media',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.amberAccent,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.amberAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
