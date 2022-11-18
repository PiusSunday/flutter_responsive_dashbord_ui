import 'package:flutter/material.dart';

var kBackgroundColor = Colors.grey[300];

var kAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var kMyDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: const [
      // Drawer Header
      DrawerHeader(
        child: Icon(
          Icons.favorite,
        ),
      ),

      // Drawer Body ListTile

      // D A S H B O A R D
      ListTile(
        leading: Icon(
          Icons.home,
        ),
        title: Text(
          'D A S H B O A R D',
        ),
      ),

      // M E S S A G E S
      ListTile(
        leading: Icon(
          Icons.message,
        ),
        title: Text(
          'M E S S A G E S',
        ),
      ),

      // T A S K S
      ListTile(
        leading: Icon(
          Icons.task,
        ),
        title: Text(
          'T A S K S',
        ),
      ),

      // F I L E S
      ListTile(
        leading: Icon(
          Icons.file_copy,
        ),
        title: Text(
          'F I L E S',
        ),
      ),

      // S E T T I N G S
      ListTile(
        leading: Icon(
          Icons.settings,
        ),
        title: Text(
          'S E T T I N G S',
        ),
      ),

      // L O G O U T
      ListTile(
        leading: Icon(
          Icons.logout,
        ),
        title: Text(
          'L O G O U T',
        ),
      ),
    ],
  ),
);
