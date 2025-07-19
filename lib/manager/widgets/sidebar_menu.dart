// widgets/sidebar_menu.dart
import 'package:flutter/material.dart';

class SidebarMenu extends StatelessWidget {
  final Function(int) onMenuTap;
  final int selectedIndex;

  const SidebarMenu({
    Key? key,
    required this.onMenuTap,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      'Dashboard',
      'Vehicle Entry',
      'Service Records',
      'Reports',
      'Logout',
    ];

    return Drawer(
      child: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            selected: selectedIndex == index,
            leading: Icon(Icons.circle),
            title: Text(menuItems[index]),
            onTap: () => onMenuTap(index),
          );
        },
      ),
    );
  }
}
