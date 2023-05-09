import 'package:flutter/material.dart';
import 'package:tc_app1/screens/components/background.dart';
import 'package:tc_app1/constants.dart';
import 'components/ClubDetail.dart';
import 'components/ClubMembers.dart';
import 'components/Heading.dart';
import 'components/ImageSlider.dart';

class Body extends StatelessWidget {
  Body({super.key});

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
            height: KAppBarHeight * 1.90,
          ),

          //----Background Image----//
          BackdropAndRating(size: size),
          const SizedBox(height: kDefaultHeight),

          //----Club Detail----//
          ClubDetail(
            name: clubName,
            description: description,
          ),
          SizedBox(
            height: kDefaultHeight,
          ),
          Headings(heading: 'Members'),

          //----Club Members----//
          ClubMembers(),

          SizedBox(
            height: kDefaultHeight,
          ),

          Headings(heading: 'Achivements'),
          SizedBox(
            height: kDefaultHeight,
          ),

          //----Image Carousel Slider----//
          ImageSlider(images: images),
          SizedBox(
            height: kDefaultHeight,
          ),
        ],
      ),
    );
  }
}
