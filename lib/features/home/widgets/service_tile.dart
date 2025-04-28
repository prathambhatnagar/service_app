import 'package:flutter/material.dart';

class ServiceTile extends StatelessWidget {
  final String service;
  final String arrivalTime;
  final String imgSrc;
  final String location;
  final double rating;

  const ServiceTile(
      {super.key,
      required this.service,
      required this.arrivalTime,
      required this.imgSrc,
      required this.location,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        color: Colors.grey.shade50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image with rating
            Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(
                    imgSrc, // Replace with your image path
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 6,
                  left: 6,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const SizedBox(width: 2),
                        Text(
                          rating.toStringAsFixed(1),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Title
            Padding(
              padding: EdgeInsets.only(left: 8.0, top: 6),
              child: Text(
                service,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            // Location and time
            Padding(
              padding: EdgeInsets.only(left: 8.0, top: 2, bottom: 8),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined,
                      size: 14, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    '$location • $arrivalTime minutes',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
