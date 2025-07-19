import 'package:flutter/material.dart';
import 'components/sidebar.dart';
import 'pages/dashboard_page.dart';

class OwnerDashboard extends StatefulWidget {
  const OwnerDashboard({super.key});

  @override
  State<OwnerDashboard> createState() => _OwnerDashboardState();
}

class _OwnerDashboardState extends State<OwnerDashboard> {
  Widget _selectedPage = const DashboardPage();

  void _navigateTo(Widget page) {
    setState(() {
      _selectedPage = page;
    });
    Navigator.of(context).pop(); // Close drawer after selection
  }

  @override
  Widget build(BuildContext context) {
    final bool isLargeScreen = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      appBar: isLargeScreen
          ? null
          : AppBar(
              title: const Text('Owner Dashboard'),
              backgroundColor: Colors.blueGrey[800],
            ),
      drawer: isLargeScreen
          ? null
          : Drawer(child: Sidebar(onItemSelected: _navigateTo)),
      body: Row(
        children: [
          if (isLargeScreen)
            Sidebar(onItemSelected: _navigateTo), // always visible
          Expanded(
            child: Container(
              color: Colors.grey[100],
              padding: const EdgeInsets.all(16.0),
              child: _selectedPage,
            ),
          ),
        ],
      ),
    );
  }
}
