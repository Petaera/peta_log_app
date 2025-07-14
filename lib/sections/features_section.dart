import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final features = [
      {
        'icon': LucideIcons.zap,
        'title': 'Auto Logging',
        'desc': 'Capture vehicle entry/exit with real-time images and number plate detection',
        'color': Colors.blue
      },
      {
        'icon': LucideIcons.eye,
        'title': 'Smart Filters',
        'desc': 'Find logs by time, vehicle type, tag, duration and more',
        'color': Colors.green
      },
      {
        'icon': LucideIcons.database,
        'title': 'Centralised Storage',
        'desc': 'All logs stored securely with visual proof and timestamps',
        'color': Colors.purple
      },
      {
        'icon': LucideIcons.gauge,
        'title': 'Live Dashboard',
        'desc': 'Real-time monitoring of vehicle movements with stats',
        'color': Colors.orange
      },
      {
        'icon': LucideIcons.gift,
        'title': 'Loyalty Friendly',
        'desc': 'Recognize repeat visits and reward frequent customers',
        'color': Colors.pink
      },
      {
        'icon': LucideIcons.download,
        'title': 'API + Export',
        'desc': 'Seamless integration with your CRM and report generation',
        'color': Colors.indigo
      },
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
      color: const Color(0xFFF9FAFB),
      child: Column(
        children: [
          const Text(
            'Powerful Features',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Everything you need to automate vehicle tracking and optimize operations',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: features.map((item) {
              return Container(
                width: 300,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: (item['color'] as Color).withOpacity(0.2),
                      child: Icon(item['icon'] as IconData, color: item['color'] as Color),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      item['title'] as String,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item['desc'] as String,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
