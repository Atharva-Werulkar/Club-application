import 'package:flutter/material.dart';
import 'package:tc_app1/constants.dart';

class ClubDetail extends StatelessWidget {
  final String name;
  final String description;
  const ClubDetail({
    Key? key,
    required this.name,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding,
          ),
          child: Text(
            name,
            style: TextStyle(fontSize: 35, color: Colors.black),
          ),
        ),
        const SizedBox(height: kDefaultHeight / 5),

        //----Club Discreption----//

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            description,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF737599),
            ),
          ),
        ),
      ],
    );
  }
}
