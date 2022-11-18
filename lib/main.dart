import 'package:flutter/material.dart';

import 'responsive/desktop_scaffold.dart';
import 'responsive/mobile_scaffold.dart';
import 'responsive/responsive_layout.dart';
import 'responsive/tablet_sacffold.dart';

void main() {
  runApp(const ResponsiveDashboardUI());
}

class ResponsiveDashboardUI extends StatelessWidget {
  const ResponsiveDashboardUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RD UI',
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
