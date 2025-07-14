import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class UseCasesSection extends StatelessWidget {
  const UseCasesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final useCases = [
      {
        'icon': LucideIcons.car,
        'title': 'Petrol Pumps',
        'desc':
            'Identify repeat visitors and optimize refueling efficiency. Track customer patterns and reduce wait times with intelligent queue management.',
        'image': 'assets/gasoline-8719776.jpg',
        'color': Colors.blue
      },
      {
        'icon': LucideIcons.car,
        'title': 'Car Wash Centres',
        'desc':
            'Track vehicle wash durations and streamline queue management. Monitor service times and optimize workflow for maximum efficiency.',
        'image': 'assets/car-wash-3960877.jpg',
        'color': Colors.green
      },
      {
        'icon': LucideIcons.truck,
        'title': 'Crusher Yards / Stone Quarries',
        'desc':
            'Log truck movements, load times, and outbound records visually. Maintain detailed records for compliance and operational efficiency.',
        'image': 'assets/digger-1867268.jpg',
        'color': Colors.orange
      },
      {
        'icon': LucideIcons.warehouse,
        'title': 'Storage Godowns / Warehouses',
        'desc':
            'Monitor goods vehicle in-out logs for traceability and audits. Ensure complete visibility of inventory movements and delivery schedules.',
        'image': 'assets/store-5619201.jpg',
        'color': Colors.purple
      },
    ];

    final isWideScreen = MediaQuery.of(context).size.width >= 800;

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
      child: Column(
        children: [
          const Text(
            'Perfect for Every Industry',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'From fuel stations to warehouses, PetaLog adapts to your specific needs',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 40),
          Column(
            children: useCases.map((useCase) {
              final isEven = useCases.indexOf(useCase) % 2 == 0;
              return Padding(
                padding: const EdgeInsets.only(bottom: 48.0),
                child: isWideScreen
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: isEven
                            ? _buildRowContent(useCase)
                            : _buildRowContent(useCase).reversed.toList(),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _buildImage(useCase),
                          const SizedBox(height: 20),
                          _buildTextBlock(useCase),
                        ],
                      ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }

  List<Widget> _buildRowContent(Map<String, dynamic> useCase) {
    return [
      _buildTextBlock(useCase),
      const SizedBox(width: 40),
      _buildImage(useCase),
    ];
  }

  Widget _buildTextBlock(Map<String, dynamic> useCase) {
    return SizedBox(
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(useCase['icon'], color: useCase['color'], size: 28),
              const SizedBox(width: 12),
              Text(
                useCase['title'],
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            useCase['desc'],
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget _buildImage(Map<String, dynamic> useCase) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        useCase['image'],
        width: 320,
        height: 180,
        fit: BoxFit.cover,
      ),
    );
  }
}
