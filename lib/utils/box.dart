import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  const Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text(
        //       'Total Users',
        //       style: TextStyle(
        //         color: Colors.grey[600],
        //         fontSize: 20,
        //         fontWeight: FontWeight.w600,
        //       ),
        //     ),
        //     const SizedBox(height: 10),
        //     const Text(
        //       '1,200',
        //       style: TextStyle(
        //         color: Colors.black,
        //         fontSize: 30,
        //         fontWeight: FontWeight.w600,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
