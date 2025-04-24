import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'banner_tile.dart';

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 6.5,
      child: CarouselSlider(
        items: [
          BannerTile(
            title: 'Get best Interior Design',
            buttonTitle: 'Book Service',
            imgSrc:
                'assets/images/2107.q703.010.S.m004.c10.house plants realistic.jpg',
          ),
          BannerTile(
            title: 'Get best AC Services',
            buttonTitle: 'Book Service',
            imgSrc: 'assets/images/AC-Repairing-Service.jpg',
          ),
          BannerTile(
            title: 'Get Doctors at Home',
            buttonTitle: 'Book Appointment',
            imgSrc: 'assets/images/DOCTOR-AT-HOME-1.png',
          )
        ],
        options: CarouselOptions(
          enlargeCenterPage: true,
          autoPlay: true,
          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
          viewportFraction: 1,
        ),
      ),
    );
  }
}
