import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tc_app1/screens/detail_screen.dart';

void main() {
  runApp(const DetailScreen());
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          flexibleSpace: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          elevation: 0,
          leading: const Icon(Icons.arrow_back, color: Colors.black),
          title: const Text(""),
          backgroundColor: Colors.white.withAlpha(300),
        ),
        body: Body(),
      ),
    );
  }
}
