import 'package:flutter/material.dart';
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
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
    );
  }
}
