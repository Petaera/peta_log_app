import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class SecuritySection extends StatelessWidget {
  const SecuritySection({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'icon': LucideIcons.shield,
        'title': 'Secure Storage',
        'desc': 'All images and data securely stored with encryption',
        'color': Colors.blue
      },
      {
        'icon': LucideIcons.users,
        'title': 'Access Control',
        'desc': 'Admin-only access with role-based permissions',
        'color': Colors.green
      },
      {
        'icon': LucideIcons.building,
        'title': 'Reliable Infrastructure',
        'desc': 'Hosted on scalable cloud infrastructure',
        'color': Colors.purple
      },
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
      color: Colors.black87,
      child: Column(
        children: [
          const Text(
            'Trust & Security',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 8),
          const Text(
            'Your data is protected with enterprise-grade security measures',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white60),
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: items.map((item) {
              return Container(
                width: 260,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white10,
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
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item['desc'] as String,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 14, color: Colors.white60),
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