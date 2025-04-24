import 'package:flutter/material.dart';

import 'option_tile.dart';

class CategoriesPanel extends StatelessWidget {
  const CategoriesPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      children: [
        OptionTile(label: 'Doctor', imgSrc: 'assets/images/b2b.png'),
        OptionTile(label: 'Doctor', imgSrc: 'assets/images/b2b.png'),
        OptionTile(label: 'Doctor', imgSrc: 'assets/images/b2b.png'),
        OptionTile(label: 'Doctor', imgSrc: 'assets/images/b2b.png'),
        OptionTile(label: 'Doctor', imgSrc: 'assets/images/b2b.png'),
        OptionTile(label: 'Doctor', imgSrc: 'assets/images/b2b.png'),
        OptionTile(label: 'Doctor', imgSrc: 'assets/images/b2b.png'),
        OptionTile(label: 'Doctor', imgSrc: 'assets/images/b2b.png'),
        OptionTile(label: 'Doctor', imgSrc: 'assets/images/b2b.png'),
        OptionTile(label: 'Doctor', imgSrc: 'assets/images/b2b.png'),
        OptionTile(label: 'Doctor', imgSrc: 'assets/images/b2b.png'),
        OptionTile(label: 'Doctor', imgSrc: 'assets/images/b2b.png'),
      ],
    );
  }
}
