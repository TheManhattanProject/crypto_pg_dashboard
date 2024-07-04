import 'package:dashboard/util/responsive.dart';
import 'package:flutter/material.dart';

class LeftSidebar extends StatelessWidget {
  final int currentPage;
  final Function(int) onPageChanged;

  const LeftSidebar({
    super.key,
    required this.currentPage,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    return Container(
      width: MediaQuery.sizeOf(context).width /6,
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
          SidebarItem(
            icon: Icons.dashboard,
            title: 'Home',
            isSelected: currentPage == 0,
            onTap: () { onPageChanged(0);
             if(!isDesktop){
                Navigator.pop(context);
              }
            },
          ),
          SidebarItem(
            icon: Icons.payment,
            title: 'Transactions',
            isSelected: currentPage == 1,
            onTap: () { onPageChanged(1);
             if(!isDesktop){
                Navigator.pop(context);
              }
            },
          ),
          SidebarItem(
            icon: Icons.account_balance,
            title: 'Settlements',
            isSelected: currentPage == 2,
            onTap: () { 
              onPageChanged(2);
               if(!isDesktop){
                Navigator.pop(context);
              }
             
              },
          ),
          SidebarItem(
            icon: Icons.bar_chart,
            title: 'Reports',
            isSelected: currentPage == 3,
            onTap: () { onPageChanged(3);
             if(!isDesktop){
                Navigator.pop(context);
              }
            },
          ),
          SidebarItem(
            icon: Icons.settings,
            title: 'Settings',
            isSelected: currentPage == 4,
            onTap: () {onPageChanged(4);
             if(!isDesktop){
                Navigator.pop(context);
              }
            },
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
