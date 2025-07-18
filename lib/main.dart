import 'package:flutter/material.dart';
import 'package:peta_log/pages/login.dart';
import 'sections/hero_section.dart';
import 'sections/features_section.dart';
import 'sections/use_cases_section.dart';
import 'sections/how_it_works_section.dart';
import 'sections/results_section.dart';
import 'sections/security_section.dart';
import 'sections/footer_section.dart';
import 'sections/ctaSection.dart';

void main() {
  runApp(const PetaLogApp());
}

class PetaLogApp extends StatelessWidget {
  const PetaLogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PetaLog',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const LandingPage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // '/': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(), // Named route added
      },
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Main scrollable content with padding for TopBar
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                HeroSection(),
                FeaturesSection(),
                UseCasesSection(),
                HowItWorksSection(),
                ResultsSection(),
                SecuritySection(),
                CTASection(),
                FooterSection(),
              ],
            ),
          ),

          // Fixed TopBar
          const Positioned(top: 0, left: 0, right: 0, child: TopBar()),
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // App name or logo
          Text(
            'PetaLog',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),

          // Login button
          ElevatedButton(
  onPressed: () {
    Navigator.pushNamed(context, '/login');
  },
  child: const Text('Login'),
),


        ],
      ),
    );
  }
}
