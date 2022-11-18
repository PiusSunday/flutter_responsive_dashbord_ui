import 'package:flutter/material.dart';

import '../utils/box.dart';
import '../utils/tile.dart';
import 'constants.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      backgroundColor: kBackgroundColor,
      body: Row(
        children: [
          // Open Drawer
          kMyDrawer,

          // Main Content
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // 4 box on the top
                AspectRatio(
                  aspectRatio: 1,
                  child: SizedBox(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const Box();
                      },
                    ),
                  ),
                ),

                // tiles below it
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const Tile();
                    },
                  ),
                ),
              ],
            ),
          ),

          // Right Side
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
