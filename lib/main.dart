import 'dart:io';

import 'package:dashboard/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if(Platform.isWindows){
    WindowManager.instance.setMinimumSize(const Size(600, 600));
  }
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

