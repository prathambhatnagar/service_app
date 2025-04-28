import 'package:flutter/material.dart';

import '../view/service_list_screen.dart';
import 'option_tile.dart';

class CategoriesPanel extends StatelessWidget {
  const CategoriesPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16, right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Categories',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ServicesListScreen()));
                },
                child: Text(
                  'View all',
                  style: TextStyle(color: Colors.orange, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        GridView(
          shrinkWrap: true,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          children: [
            OptionTile(label: 'B2B', imgSrc: 'assets/images/b2b.png'),
            OptionTile(
                label: 'AC Service', imgSrc: 'assets/images/ac_service.png'),
            OptionTile(label: 'Astrologist', imgSrc: 'assets/images/astro.png'),
            OptionTile(label: 'Beauty', imgSrc: 'assets/images/beauty.png'),
            OptionTile(label: 'Car Hire', imgSrc: 'assets/images/carhire.png'),
            OptionTile(label: 'Computer', imgSrc: 'assets/images/computer.png'),
            OptionTile(
                label: 'Courier', imgSrc: 'assets/images/delivery-man.png'),
            OptionTile(label: 'Interior', imgSrc: 'assets/images/designer.png'),
          ],
        ),
      ],
    );
  }
}
