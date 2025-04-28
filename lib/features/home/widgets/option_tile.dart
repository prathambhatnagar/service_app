import 'package:flutter/material.dart';

class OptionTile extends StatelessWidget {
  final String label;
  final String imgSrc;
  final Widget? route;
  const OptionTile(
      {super.key, required this.label, required this.imgSrc, this.route});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Image.asset(height: 35, width: 35, imgSrc),
            SizedBox(height: 6),
            Text(label,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.w500))
          ],
        ),
      ],
    );
  }
}
