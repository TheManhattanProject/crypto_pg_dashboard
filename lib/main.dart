import 'package:dashboard/side_bar.dart';
import 'package:dashboard/testing_page.dart';
import 'package:dashboard/top_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Crypto',
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String _currentPage = 'home';

  void _changePage(String pageName) {
    setState(() {
      _currentPage = pageName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          LeftSidebar(
            currentPage: _currentPage,
            onPageChanged: _changePage,
          ),
          Expanded(
            child: Column(
              children: [
                const TopBar(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: DummyPage(pageName: _currentPage),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
