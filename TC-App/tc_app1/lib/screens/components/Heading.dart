import 'package:flutter/material.dart';
import 'package:tc_app1/constants.dart';

class Headings extends StatelessWidget {
  final String heading;
  const Headings({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2,
        horizontal: kDefaultPadding,
      ),
      child: Text(
        heading,
        style: TextStyle(fontSize: 35, color: Colors.black),
      ),
    );
  }
}
