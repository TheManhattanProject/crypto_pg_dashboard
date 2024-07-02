import 'package:flutter/material.dart';

class LeftSidebar extends StatelessWidget {
  final String currentPage;
  final Function(String) onPageChanged;

  const LeftSidebar({
    super.key,
    required this.currentPage,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      // color: Color(0xff58666e).withOpacity(0.6),
      color: Colors.blue[100],
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Dashboard',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SidebarItem(
                  icon: Icons.dashboard,
                  title: 'Home',
                  isSelected: currentPage == 'home',
                  onTap: () => onPageChanged('home'),
                ),
                SidebarItem(
                  icon: Icons.payment,
                  title: 'Transactions',
                  isSelected: currentPage == 'transactions',
                  onTap: () => onPageChanged('transactions'),
                ),
                SidebarItem(
                  icon: Icons.account_balance,
                  title: 'Settlements',
                  isSelected: currentPage == 'settlements',
                  onTap: () => onPageChanged('settlements'),
                ),
                SidebarItem(
                  icon: Icons.bar_chart,
                  title: 'Reports',
                  isSelected: currentPage == 'Reports',
                  onTap: () => onPageChanged('Reports'),
                ),
                SidebarItem(
                  icon: Icons.settings,
                  title: 'Settings',
                  isSelected: currentPage == 'Settings',
                  onTap: () => onPageChanged('Settings'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SidebarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const SidebarItem({
    Key? key,
    required this.icon,
    required this.title,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected ? Colors.blue[900] : null,
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(title, style: const TextStyle(color: Colors.white)),
        onTap: onTap,
      ),
    );
  }
}
