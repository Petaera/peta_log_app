import 'package:flutter/material.dart';
import 'package:peta_log/owner/pages/comparison_page.dart';
import '../pages/dashboard_page.dart';
import '../pages/automatic_logs_page.dart';
import '../pages/manual_logs_page.dart';
import '../pages/reports_page.dart';
import '../pages/manager_access_page.dart';
import '../pages/price_settings_page.dart';
import '../pages/vehicle_history_page.dart';
import '../pages/owner_manual_entry_page.dart';

class Sidebar extends StatelessWidget {
  final Function(Widget) onItemSelected;

  const Sidebar({super.key, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      color: Colors.blueGrey[800],
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          const DrawerHeader(
            child: Text(
              'Owner Panel',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          _navItem("Dashboard", const DashboardPage()),
          _navItem("Automatic Logs", const AutomaticLogsPage()),
          _navItem("Manual Logs", const ManualLogsPage()),
          _navItem("Comparison", const ComparisonPage()),
          _navItem("Reports", const ReportsPage()),
          _navItem("Manager Access", const ManagerAccessPage()),
          _navItem("Price Settings", const PriceSettingsPage()),
          _navItem("Vehicle History", const VehicleHistoryPage()),
          _navItem("Manual Entry", const OwnerManualEntryPage()),
        ],
      ),
    );
  }

  Widget _navItem(String title, Widget page) {
    return ListTile(
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: () => onItemSelected(page),
    );
  }
}
