import 'package:flutter/material.dart';
import 'package:tc_app1/constants.dart';

class CircleAvatarWithPadding extends StatelessWidget {
  final String imagePath, name;
  final double radius;

  const CircleAvatarWithPadding(
      {Key? key,
      required this.imagePath,
      required this.radius,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imagePath),
            radius: radius,
          ),
          SizedBox(
              height:
                  8.0), // Adds some spacing between the CircleAvatar and Text widgets
          Text(
            name,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
