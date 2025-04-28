import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String label;
  final String imgSrc;
  const CategoryTile({super.key, required this.label, required this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Container(
              height: 140,
              width: 130,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(imgSrc))),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(.5)),
                height: 30,
                child: Text(
                  textAlign: TextAlign.center,
                  label,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
