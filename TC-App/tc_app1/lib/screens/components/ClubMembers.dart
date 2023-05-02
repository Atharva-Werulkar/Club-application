import 'package:flutter/material.dart';

import '../../constants.dart';
import 'CircleAvatarWithPadding.dart';

class ClubMembers extends StatelessWidget {
  const ClubMembers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CircleAvatarWithPadding(
            imagePath: 'https://www.woolha.com/media/2020/03/eevee.png',
            radius: 50.0,
            name: 'Bhavesh',
          ),
          CircleAvatarWithPadding(
              imagePath: 'https://www.woolha.com/media/2020/03/eevee.png',
              radius: 50.0,
              name: 'Atharva'),
          CircleAvatarWithPadding(
              imagePath: 'https://www.woolha.com/media/2020/03/eevee.png',
              radius: 50.0,
              name: 'Sarvesh'),
          CircleAvatarWithPadding(
              imagePath: 'https://www.woolha.com/media/2020/03/eevee.png',
              radius: 50.0,
              name: 'pratyush'),
        ],
      ),
    );
  }
}
