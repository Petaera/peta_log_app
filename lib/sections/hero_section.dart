import 'package:flutter/material.dart';
//import 'package:lucide_icons/lucide_icons.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.9,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/gas-station-2665795.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black45,
                BlendMode.darken,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Chip(
                    label: Text(
                      "Peta-Log",
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Color(0xFF2563EB),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                  const SizedBox(height: 24),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Automate, Analyse, ',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'Accelerate',
                          style: TextStyle(color: Color(0xFF60A5FA)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Smarter Vehicle Logging for Fuel Stations, Car Washes, Warehouses & Crusher Yards',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2563EB),
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    ),
                    onPressed: () {},
                    child: const Text("Get Started", style: TextStyle(fontSize: 16)),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
