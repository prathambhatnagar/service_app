import 'package:flutter/material.dart';

class BannerTile extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final String imgSrc;
  const BannerTile(
      {super.key,
      required this.title,
      required this.buttonTitle,
      required this.imgSrc});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        clipBehavior: Clip.none,
        padding: EdgeInsets.all(20),
        height: size.height / 6,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imgSrc)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 25,
              left: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                          shadows: [Shadow(color: Colors.grey, blurRadius: 2)],
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          letterSpacing: 1)),
                  SizedBox(height: 6),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white54),
                    child: Text(buttonTitle,
                        style: TextStyle(
                            shadows: [
                              Shadow(color: Colors.grey, blurRadius: 2)
                            ],
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
