import 'package:flutter/material.dart';
import 'package:services/features/home/widgets/service_provider_detail_page.dart';

class ServiceProviderTile extends StatelessWidget {
  final String name;
  final String imgSrc;
  final String location;
  final String service;
  final double price;
  const ServiceProviderTile(
      {super.key,
      required this.imgSrc,
      required this.location,
      required this.service,
      required this.price,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ServiceProviderDetailPage()));
      },
      child: Card(
        color: Colors.grey.shade50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 5,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(
                      imgSrc,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: const [
                            Icon(Icons.verified, size: 16, color: Colors.blue),
                            SizedBox(width: 6),
                            Icon(Icons.chat_bubble_outline,
                                size: 16, color: Colors.black54),
                            SizedBox(width: 6),
                            Icon(Icons.directions_car_filled_outlined,
                                size: 16, color: Colors.black54),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '\$${price.toStringAsFixed(2)}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Icon(Icons.person_outline, size: 16),
                  SizedBox(width: 6),
                  Text(service),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: const [
                  Icon(Icons.location_on_outlined, size: 16),
                  SizedBox(width: 6),
                  Text('New York'),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: const [
                  Text('Active', style: TextStyle(color: Colors.orange)),
                  SizedBox(width: 4),
                  Text('• 1 offer'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
