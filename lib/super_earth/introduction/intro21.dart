import 'package:exofun/super_earth/components/template5.dart';
import 'package:flutter/material.dart';

class Intro21 extends StatelessWidget {
  const Intro21({super.key});

  @override
  Widget build(BuildContext context) {
    return Template5(
      bgImage: 'assets/image3.png',
      customTitleText: 'Transit Method',
      text:
          'The transit method watches for small dips in a star\'s brightness. These dips happen when a planet passes in front of the star, blocking some of its light. The size of the dip helps scientists estimate how big the planet is.',
      gif: 'assets/transit_final.gif',
    );
  }
}
