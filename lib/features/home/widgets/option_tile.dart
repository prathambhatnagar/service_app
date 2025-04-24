import 'package:flutter/material.dart';

class OptionTile extends StatelessWidget {
  final String label;
  final String imgSrc;
  final Widget? route;
  const OptionTile(
      {super.key, required this.label, required this.imgSrc, this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(height: 50, width: 50, imgSrc),
          SizedBox(height: 6),
          Text(label,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
