import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
      color: Colors.black,
      child: Column(
        children: [
          Wrap(
            spacing: 40,
            runSpacing: 40,
            alignment: WrapAlignment.spaceAround,
            children: [
              // Logo & Tagline
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Row(
                    children: [
                      Icon(LucideIcons.camera, color: Colors.white, size: 28),
                      SizedBox(width: 8),
                      Text(
                        'PetaLog',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Track. Log. Know.',
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Smart vehicle logging platform for modern businesses.',
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),

              // Product Links
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Product',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(height: 8),
                  Text('Features', style: TextStyle(color: Colors.white54)),
                  Text('Pricing', style: TextStyle(color: Colors.white54)),
                  Text('API', style: TextStyle(color: Colors.white54)),
                  Text('Documentation', style: TextStyle(color: Colors.white54)),
                ],
              ),

              // Company Links
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Company',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(height: 8),
                  Text('About', style: TextStyle(color: Colors.white54)),
                  Text('Contact', style: TextStyle(color: Colors.white54)),
                  Text('Privacy', style: TextStyle(color: Colors.white54)),
                  Text('Terms', style: TextStyle(color: Colors.white54)),
                ],
              ),

              // Download Badges
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Download',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  const SizedBox(height: 12),
                  Image.network(
                    'https://developer.apple.com/assets/elements/badges/download-on-the-app-store.svg',
                    height: 40,
                  ),
                  const SizedBox(height: 12),
                  Image.network(
                    'https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png',
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Divider(color: Colors.white12),
          const SizedBox(height: 20),
          const Text(
            '© 2025 PetaEra Technologies. All rights reserved.',
            style: TextStyle(color: Colors.white60),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}