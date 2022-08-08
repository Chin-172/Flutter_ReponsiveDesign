import 'package:app/responsive/desktop_layout.dart';
import 'package:app/responsive/mobile_layout.dart';
import 'package:app/responsive/responsiveLayout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: currentWidth < 600 ? Colors.amber : Colors.green,
      body: ResponsiveLayout(mobileBody: MobileLayout(), desktopBody: DesktopLayout())
    );
  }
}