import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
    Key? key,
  }) : super(key: key);

  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return widget.mobileScaffold;
        } else if (constraints.maxWidth < 1000) {
          return widget.tabletScaffold;
        } else {
          return widget.desktopScaffold;
        }
      },
    );
  }
}
