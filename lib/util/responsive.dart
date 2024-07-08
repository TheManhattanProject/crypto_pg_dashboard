
import 'package:flutter/material.dart';

class Responsive{
  static bool isMobile(BuildContext context) => MediaQuery.sizeOf(context).width < 850;
  static bool isTablet(BuildContext context) => MediaQuery.sizeOf(context).width < 1100 &&
  MediaQuery.sizeOf(context).width >= 850;
  static bool isDesktop(BuildContext context) => MediaQuery.sizeOf(context).width >= 1100;
}