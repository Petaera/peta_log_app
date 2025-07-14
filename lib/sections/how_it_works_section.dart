import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HowItWorksSection extends StatelessWidget {
  const HowItWorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    final steps = [
      {
        'icon': LucideIcons.camera,
        'title': 'Image Capture',
        'desc': 'IP cameras capture continuous snapshots at key locations',
        'color': Colors.blue
      },
      {
        'icon': LucideIcons.eye,
        'title': 'Auto Recognition',
        'desc': 'Vehicle numbers, timestamps, and types are logged automatically',
        'color': Colors.green
      },
      {
        'icon': LucideIcons.barChart3,
        'title': 'Dashboard Insights',
        'desc': 'Admins analyze and act on real-time data with ease',
        'color': Colors.purple
      },
    ];

    return Container(
      color: const Color(0xFFF9FAFB),
      padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
      child: Column(
        children: [
          const Text(
            'How it Works',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Simple 3-step process to automate your vehicle logging',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 40),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 32,
            runSpacing: 32,
            children: steps.map((step) {
              return SizedBox(
                width: 280,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: (step['color'] as Color).withOpacity(0.2),
                      child: Icon(
                        step['icon'] as IconData,
                        color: step['color'] as Color,
                        size: 32,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      step['title'] as String,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      step['desc'] as String,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 32),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/security-4430918.jpg',
              width: 320,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
