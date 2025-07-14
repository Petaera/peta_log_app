import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ResultsSection extends StatelessWidget {
  const ResultsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final results = [
      {
        'icon': LucideIcons.timer,
        'title': 'Zero Manual Logging',
        'desc': 'Fully automated tracking — no paper registers.',
        'color': Colors.blue
      },
      {
        'icon': LucideIcons.fileText,
        'title': '1-Click',
        'desc': 'Log retrieval from visual history',
        'color': Colors.green
      },
      {
        'icon': LucideIcons.eye,
        'title': 'Live',
        'desc': 'Filtering of thousands of entries in seconds',
        'color': Colors.purple
      },
      {
        'icon': LucideIcons.gift,
        'title': 'Simple',
        'desc': 'Visit-based loyalty rewards',
        'color': Colors.orange
      },
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
      color: Colors.white,
      child: Column(
        children: [
          const Text(
            'Results You Can Expect',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Proven outcomes that drive efficiency and customer satisfaction',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: results.map((item) {
              return Container(
                width: 260,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: (item['color'] as Color).withOpacity(0.05),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Icon(item['icon'] as IconData,
                        size: 40, color: item['color'] as Color),
                    const SizedBox(height: 16),
                    Text(
                      item['title'] as String,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
