import 'package:flutter/material.dart';

import '../utils/box.dart';
import '../utils/tile.dart';
import 'constants.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      backgroundColor: kBackgroundColor,
      drawer: kMyDrawer,
      body: Column(
        children: [
          // 4 box on the top
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
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
    );
  }
}
