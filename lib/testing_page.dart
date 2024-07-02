import 'package:dashboard/home/home_page.dart';
import 'package:dashboard/settelments_page.dart';
import 'package:dashboard/transactions_page.dart';
import 'package:flutter/material.dart';

class DummyPage extends StatelessWidget {
  final String pageName;

  const DummyPage({super.key, required this.pageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.maxFinite,
      // height: double.maxFinite,
      // color: Color(0xff58666e).withOpacity(0.6),
      child: _getPage(pageName),
    );
  }

  Widget _getPage(String pageName) {
    switch (pageName) {
      case 'home':
        return const HomePage();
      case 'transactions':
        return const TransactionsPage();
      case 'settlements':
        return const SettelmentsPage();
      // case 'Reports':
      //   return Icons.bar_chart;
      // case 'Settings':
      //   return Icons.settings;
      default:
        return const HomePage();
    }
  }
}
