import 'package:flutter/material.dart';

import 'package:daimlertrucks/pages/frontpage.dart';
import 'package:daimlertrucks/pages/scanpage.dart';
import 'package:daimlertrucks/pages/orderpage.dart';
import 'package:daimlertrucks/pages/acceptpage.dart';
import 'package:daimlertrucks/pages/detailspage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/front": (context) => const FrontPage(),
        "/scan": (context) => const ScanPage(),
        "/order": (context) => const OrderPage(),
        "/accept": (context) => const Acceptpage(),
        "/details": (context) => const Detailspage(),
      },
      debugShowCheckedModeBanner: false,
      home: const FrontPage(),
    );
  }
}
