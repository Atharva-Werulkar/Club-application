import 'package:flutter/material.dart';
import 'package:tc_app1/screens/components/background.dart';
import 'package:tc_app1/constants.dart';

import 'components/ClubMembers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: KAppBarHeight * 1.94,
          ),
          //----Background Image----//

          BackdropAndRating(size: size),
          const SizedBox(height: kDefaultPadding),

          //----Club Title----//
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Club Name",
              style: TextStyle(fontSize: 35, color: Colors.black),
            ),
          ),
          const SizedBox(height: kDefaultPadding / 5),

          //----Club Discreption----//
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              textAlign: TextAlign.justify,
              "Non pariatur eiusmod esse eiusmod qui amet non in nisi dolor eu nostrud enim. Veniam qui do tempor esse proident culpa laboris. Sit commodo aute cupidatat ad. Laborum eu eiusmod ex ipsum ipsum eiusmod dolore laborum. Magna labore labore qui amet ex officia. Sint sit anim id id esse adipisicing.",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF737599),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: const <Widget>[
                Text(
                  'Members',
                  style: TextStyle(fontSize: 35, color: Colors.black),
                )
              ],
            ),
          ),
          ClubMembers(),

          SizedBox(
            height: 150,
          ),
        ],
      ),
    );
  }
}
