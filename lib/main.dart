import 'dart:io';

import 'package:dashboard/features/auth/login.dart';
import 'package:dashboard/features/auth/signup.dart';
import 'package:dashboard/features/tabs/dashboard_page.dart';
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
      home: Signup(),
    );
  }
}

